-- Focus: Second Normal Form (2NF)
-- Rule: no partial dependencies


-- PART 1: Example that violates 2NF
-- The table is already in 1NF (atomic values),
-- but it has a composite primary key.

CREATE TABLE store_inventory_bad (
    toy_id INT,
    store_id INT,
    inventory INT,
    store_address VARCHAR(200),
    PRIMARY KEY (toy_id, store_id)
);

-- Explanation:
-- The primary key is (toy_id, store_id).
-- That means both columns together uniquely identify a row.

-- Problem:
-- store_address depends only on store_id,
-- not on the full composite key (toy_id, store_id).
-- This creates a partial dependency and violates 2NF.

-- Because of this design, store_address would be repeated
-- for every toy in the same store.
-- That leads to redundancy and possible update anomalies.


-- PART 2: Correct design (2NF compliant)
-- Solution: separate the data into logical tables.

-- Step 1: Table with store information
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_address VARCHAR(200)
);

-- Step 2: Table with inventory information
CREATE TABLE store_inventory (
    toy_id INT,
    store_id INT,
    inventory INT,
    PRIMARY KEY (toy_id, store_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

-- Now:
-- store_address depends only on store_id
-- inventory depends on both toy_id and store_id
-- No partial dependencies


-- PART 3: Insert example data

-- Insert stores first (parent table)
INSERT INTO stores (store_id, store_address)
VALUES
(1, 'Main Street 10'),
(2, 'Central Avenue 5');

-- Insert inventory data (child table)
INSERT INTO store_inventory (toy_id, store_id, inventory)
VALUES
(101, 1, 50),
(102, 1, 30),
(101, 2, 20);


-- PART 4: Verify result

SELECT *
FROM stores;

SELECT *
FROM store_inventory;


-- 2NF Summary

-- 1. The table must already be in 1NF.
-- 2. There must be no partial dependencies.
-- 3. Every non-key column must depend on the FULL primary key.