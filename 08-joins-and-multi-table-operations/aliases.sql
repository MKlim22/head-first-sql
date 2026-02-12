-- Focus: Aliases (AS)
-- - column aliases
-- - table aliases
--
-- Purpose:
-- - improve readability
-- - shorten long table names
-- - avoid ambiguity when multiple tables share column names


-- 1) Column aliases
-- A column alias changes the column name ONLY in the result set.
-- It does NOT rename the column in the table.

SELECT first_name AS first,
       last_name  AS last
FROM my_contacts;

-- AS is optional in most SQL dialects:
SELECT first_name first,
       last_name  last
FROM my_contacts;


-- 2) Table aliases
-- A table alias changes the table name ONLY inside the query.
-- It is essential when joining tables, because it keeps SQL readable.

SELECT mc.first_name,
       mc.last_name
FROM my_contacts AS mc;

-- AS is optional here too:
SELECT mc.first_name,
       mc.last_name
FROM my_contacts mc;


-- 3) Aliases with JOINs (most common usage)
-- Aliases prevent ambiguity and reduce repetition.

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name,
       p.profession
FROM my_contacts AS mc
INNER JOIN profession AS p
ON mc.prof_id = p.prof_id;


-- 4) Why aliases matter (ambiguity example)

-- If two tables have a column with the same name (e.g., "id"),
-- you MUST qualify the column using a table name or alias.

-- Example pattern:
-- SELECT id  -- ❌ ambiguous
-- FROM table_a
-- JOIN table_b ON ...
--
-- Correct:
-- SELECT a.id, b.id
-- FROM table_a AS a
-- JOIN table_b AS b ON ...


-- Summary

-- - Column alias: changes output label only
-- - Table alias: changes name only within the query
-- - AS is usually optional, but using it can improve clarity