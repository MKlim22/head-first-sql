-- Focus: First Normal Form (1NF)
-- Atomic values and no repeating groups


-- Example 1: NOT in 1NF (multiple values in one column)

CREATE TABLE contacts_bad (
    contact_id INT PRIMARY KEY,
    name VARCHAR(100),
    interests VARCHAR(255)  -- ❌ multiple values stored in one field
);

-- Example problematic value:
-- interests = 'movies, sports, music'
-- This violates 1NF because a single cell contains multiple values.


-- Example 2: NOT in 1NF (repeating columns)

CREATE TABLE contacts_repeating_columns (
    contact_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone1 VARCHAR(20),
    phone2 VARCHAR(20),
    phone3 VARCHAR(20)
);

-- ❌ Repeating columns (phone1, phone2, phone3)
-- This design is not scalable and breaks normalization principles.


-- Correct Design: 1NF compliant structure

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE contact_interests (
    contact_id INT,
    interest VARCHAR(100),
    PRIMARY KEY (contact_id, interest),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

-- ✔ One interest per row
-- ✔ No repeating groups
-- ✔ Atomic values
-- ✔ Fully compliant with 1NF


-- Example Data (correct 1NF design)

INSERT INTO contacts (contact_id, name)
VALUES
(1, 'Anna'),
(2, 'Tom');

INSERT INTO contact_interests (contact_id, interest)
VALUES
(1, 'movies'),
(1, 'music'),
(2, 'sports');

-- Now:
-- Each interest is stored in a separate row.
-- The design is flexible and avoids duplication.


-- Key Rules of 1NF

-- 1. Each column must contain atomic (indivisible) values
-- 2. No repeating groups or duplicated columns
-- 3. Each row must have a primary key