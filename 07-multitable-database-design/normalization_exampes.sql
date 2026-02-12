-- Focus: practical normalization examples
-- Example 1: contacts + interests (many-to-many)
-- Example 2: store inventory (2NF refactor with composite key)


-- EXAMPLE 1: Contacts and Interests (many-to-many)

-- Problem:
-- A single column like interests = 'movies, sports' violates 1NF.
-- Solution:
-- Separate interests into a junction table (contact_interests).

-- Step 1: Create main tables
CREATE TABLE contacts_ex (
    contact_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE interests_ex (
    interest_id INT PRIMARY KEY,
    interest_name VARCHAR(100)
);

-- Step 2: Create junction table (many-to-many)
CREATE TABLE contact_interests_ex (
    contact_id INT,
    interest_id INT,
    PRIMARY KEY (contact_id, interest_id),
    FOREIGN KEY (contact_id) REFERENCES contacts_ex(contact_id),
    FOREIGN KEY (interest_id) REFERENCES interests_ex(interest_id)
);

-- Step 3: Insert sample data
INSERT INTO contacts_ex (contact_id, name)
VALUES
(1, 'Anna'),
(2, 'Tom');

INSERT INTO interests_ex (interest_id, interest_name)
VALUES
(10, 'movies'),
(20, 'sports'),
(30, 'music');

INSERT INTO contact_interests_ex (contact_id, interest_id)
VALUES
(1, 10),
(1, 30),
(2, 20);

-- Step 4: Verify (JOIN)
SELECT c.contact_id, c.name, i.interest_name
FROM contacts_ex c
JOIN contact_interests_ex ci ON c.contact_id = ci.contact_id
JOIN interests_ex i ON ci.interest_id = i.interest_id
ORDER BY c.contact_id, i.interest_name;


-- EXAMPLE 2: Store Inventory (2NF refactor)

-- Problem:
-- store_address depends only on store_id, not on (toy_id, store_id)
-- This creates a partial dependency and violates 2NF.
-- Solution:
-- Separate store data into its own table.

-- BAD table (violates 2NF)
CREATE TABLE store_inventory_bad_ex (
    toy_id INT,
    store_id INT,
    inventory INT,
    store_address VARCHAR(200),
    PRIMARY KEY (toy_id, store_id)
);

-- Explanation:
-- store_address depends only on store_id,
-- not on the full composite key (toy_id, store_id).
-- That means the address would be duplicated across many rows.

-- Correct tables (2NF compliant)
CREATE TABLE stores_ex (
    store_id INT PRIMARY KEY,
    store_address VARCHAR(200)
);

CREATE TABLE store_inventory_ex (
    toy_id INT,
    store_id INT,
    inventory INT,
    PRIMARY KEY (toy_id, store_id),
    FOREIGN KEY (store_id) REFERENCES stores_ex(store_id)
);

-- Insert sample data
INSERT INTO stores_ex (store_id, store_address)
VALUES
(1, 'Main Street 10'),
(2, 'Central Avenue 5');

INSERT INTO store_inventory_ex (toy_id, store_id, inventory)
VALUES
(101, 1, 50),
(102, 1, 30),
(101, 2, 20);

-- Verify result (JOIN)
SELECT si.toy_id, si.store_id, s.store_address, si.inventory
FROM store_inventory_ex si
JOIN stores_ex s ON si.store_id = s.store_id
ORDER BY si.store_id, si.toy_id;


-- End of file
-- Notes:
-- - Example 1 shows 1NF + many-to-many with a junction table
-- - Example 2 shows removing partial dependency to reach 2NF