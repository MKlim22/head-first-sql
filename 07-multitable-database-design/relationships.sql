-- Focus: relationships between tables
-- 1) one-to-one
-- 2) one-to-many
-- 3) many-to-many (junction table)

-- 1) One-to-One (1:1)
-- One row in table A matches exactly one row in table B.
-- Example: person ↔ passport (each person has one passport)

CREATE TABLE people (
    person_id INT PRIMARY KEY,
    full_name VARCHAR(100)
);

CREATE TABLE passports (
    passport_id INT PRIMARY KEY,
    person_id INT UNIQUE,
    passport_number VARCHAR(30),
    FOREIGN KEY (person_id) REFERENCES people(person_id)
);

-- The UNIQUE constraint on passports.person_id enforces 1:1 relationship.

-- 2) One-to-Many (1:N)
-- One row in table A can match many rows in table B.
-- Example: store → inventory rows

CREATE TABLE stores_rel (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100)
);

CREATE TABLE inventory_rel (
    inventory_id INT PRIMARY KEY,
    store_id INT,
    item_name VARCHAR(100),
    qty INT,
    FOREIGN KEY (store_id) REFERENCES stores_rel(store_id)
);

-- Here:
-- One store can have many inventory rows.
-- Each inventory row belongs to exactly one store.


-- 3) Many-to-Many (N:M) using a junction table
-- Many rows in A can match many rows in B.
-- Example: contacts ↔ interests

CREATE TABLE contacts_rel (
    contact_id INT PRIMARY KEY,
    contact_name VARCHAR(100)
);

CREATE TABLE interests_rel (
    interest_id INT PRIMARY KEY,
    interest_name VARCHAR(100)
);

-- Junction table: connects contacts and interests
CREATE TABLE contact_interest_rel (
    contact_id INT,
    interest_id INT,
    PRIMARY KEY (contact_id, interest_id),
    FOREIGN KEY (contact_id) REFERENCES contacts_rel(contact_id),
    FOREIGN KEY (interest_id) REFERENCES interests_rel(interest_id)
);

-- The composite primary key prevents duplicate pairs:
-- (contact_id = 1, interest_id = 2) inserted twice.

-- Quick example inserts (optional)
INSERT INTO people (person_id, full_name)
VALUES (1, 'Anna Nowak');

INSERT INTO passports (passport_id, person_id, passport_number)
VALUES (1, 1, 'DK1234567');

INSERT INTO stores_rel (store_id, store_name)
VALUES (1, 'Downtown Store');

INSERT INTO inventory_rel (inventory_id, store_id, item_name, qty)
VALUES
(1, 1, 'Cookies', 50),
(2, 1, 'Soda', 20);

INSERT INTO contacts_rel (contact_id, contact_name)
VALUES
(1, 'Tom'),
(2, 'Anna');

INSERT INTO interests_rel (interest_id, interest_name)
VALUES
(10, 'movies'),
(20, 'sports');

INSERT INTO contact_interest_rel (contact_id, interest_id)
VALUES
(1, 10),
(1, 20),
(2, 10);


-- Verify (optional)
SELECT *
FROM passports;

SELECT *
FROM inventory_rel;

SELECT c.contact_name, i.interest_name
FROM contacts_rel c
JOIN contact_interest_rel ci ON c.contact_id = ci.contact_id
JOIN interests_rel i ON ci.interest_id = i.interest_id
ORDER BY c.contact_name, i.interest_name;


-- Summary:
-- - 1:1 → UNIQUE foreign key on the child table
-- - 1:N → foreign key in the "many" table
-- - N:M → junction table with composite primary key