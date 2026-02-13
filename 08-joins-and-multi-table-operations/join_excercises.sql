-- Focus: practice JOINs using the book-style schema
-- (e.g., my_contacts + lookup tables like profession)


-- Exercise 1: Join my_contacts with profession

-- Goal:
-- Show each contact with their profession name.
--
-- Typical design:
-- my_contacts.prof_id (FK) -> profession.prof_id (PK)

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name,
       p.profession
FROM my_contacts AS mc
INNER JOIN profession AS p
ON mc.prof_id = p.prof_id
ORDER BY mc.last_name, mc.first_name;


-- Exercise 2: Add another lookup table (status)

-- Goal:
-- Show each contact with profession AND status.
--
-- Typical design:
-- my_contacts.status_id (FK) -> status.status_id (PK)

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name,
       p.profession,
       s.status
FROM my_contacts AS mc
INNER JOIN profession AS p
ON mc.prof_id = p.prof_id
INNER JOIN status AS s
ON mc.status_id = s.status_id
ORDER BY mc.last_name, mc.first_name;


-- Exercise 3: Join through a junction table (many-to-many)

-- Goal:
-- Show each contact with their interests.
--
-- Typical design:
-- contacts (my_contacts)
-- interests
-- contact_interest (junction table)
--
-- my_contacts.contact_id -> contact_interest.contact_id
-- interests.interest_id  -> contact_interest.interest_id

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name,
       i.interest
FROM my_contacts AS mc
INNER JOIN contact_interest AS ci
ON mc.contact_id = ci.contact_id
INNER JOIN interests AS i
ON ci.interest_id = i.interest_id
ORDER BY mc.last_name, mc.first_name, i.interest;


-- Exercise 4: Count interests per contact (JOIN + GROUP BY)

-- Goal:
-- For each contact, show how many interests they have.

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name,
       COUNT(*) AS interest_count
FROM my_contacts AS mc
INNER JOIN contact_interest AS ci
ON mc.contact_id = ci.contact_id
GROUP BY mc.contact_id, mc.first_name, mc.last_name
ORDER BY interest_count DESC, mc.last_name, mc.first_name;


-- Notes:

-- 1) INNER JOIN returns only matching rows.
-- 2) JOIN order matters for readability, but the optimizer can reorder joins.
-- 3) When joining multiple tables, always qualify columns with aliases.
-- 4) Many-to-many requires a junction table.