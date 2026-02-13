-- Focus: NATURAL JOIN
-- Goal: understand automatic joins based on matching column names


-- 1) What is a NATURAL JOIN?

-- A NATURAL JOIN automatically joins two tables
-- based on columns that have the same name.
--
-- It does NOT require an ON condition.


-- 2) Basic example

SELECT boys.boy,
       toys.toy
FROM boys
NATURAL JOIN toys;

-- The database automatically matches columns
-- that have identical names in both tables.
-- For example:
-- boys.toy_id and toys.toy_id


-- 3) What happens internally?

-- 1) SQL searches for columns with identical names.
-- 2) It creates an equality condition automatically.
-- 3) It performs an INNER JOIN using those columns.
--
-- So NATURAL JOIN behaves like:
--
-- INNER JOIN toys
-- ON boys.toy_id = toys.toy_id


-- 4) Important behavior

-- NATURAL JOIN:
-- - removes duplicate join columns from the result
-- - can change behavior if new columns are added
--   with matching names


-- 5) Why NATURAL JOIN is risky

-- If a new column with the same name is added
-- to both tables,
-- the join condition changes automatically.
--
-- This can silently break queries.


-- 6) Professional recommendation

-- In production environments,
-- explicit INNER JOIN ... ON ... is preferred.
--
-- It is:
-- - clearer
-- - safer
-- - easier to maintain


-- Summary

-- NATURAL JOIN:
-- - Automatically matches columns with the same name
-- - Does not require ON
-- - Can be convenient for quick queries
-- - Not recommended for production systems