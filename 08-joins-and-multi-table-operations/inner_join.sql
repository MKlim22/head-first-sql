-- Focus: INNER JOIN + EQUIJOIN
-- Goal: combine rows from two tables using a matching condition (ON)


-- 1) INNER JOIN (core idea)
-- INNER JOIN returns ONLY rows that match the join condition.
-- Think: intersection of matching rows from both tables.

-- Generic pattern:
-- SELECT ...
-- FROM table_a
-- INNER JOIN table_b
-- ON table_a.key = table_b.key;


-- 2) EQUIJOIN (most common INNER JOIN)
-- An EQUIJOIN is an INNER JOIN where the condition uses '='.
-- This is the typical Primary Key (PK) ↔ Foreign Key (FK) join.

-- Example (schema pattern):
-- orders.customer_id (FK) joins customers.customer_id (PK)


-- 3) Practical example (contacts + profession)
-- This matches the typical design from the book:
-- my_contacts contains a profession id (FK)
-- profession contains profession details (PK)

-- Note: Your actual table/column names might differ.
-- If needed, replace:
--   my_contacts.prof_id  and  profession.prof_id
-- with the names in your schema.

SELECT mc.contact_id,
        mc.first_name,
       mc.last_name,
       p.profession
FROM my_contacts AS mc
INNER JOIN profession AS p
ON mc.prof_id = p.prof_id
ORDER BY mc.last_name, mc.first_name;


-- 4) Why aliases matter
-- Aliases make queries shorter and avoid ambiguity
-- when both tables have columns with the same name.

-- Alias rules:
-- - Table alias exists only in this query (does not rename the table)
-- - You can omit AS: "FROM my_contacts mc"


-- Summary
-- 1) Join condition belongs in ON (not WHERE).
-- 2) INNER JOIN removes non-matching rows from the result.
-- 3) Wrong or missing ON condition can explode row counts
--    (accidental Cartesian product).