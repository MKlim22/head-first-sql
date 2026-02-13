-- Focus: NON-EQUIJOIN
-- Goal: understand joins that use operators other than "="


-- 1) What is a NON-EQUIJOIN?

-- A NON-EQUIJOIN is a join that uses comparison operators
-- other than "=" in the join condition.
--
-- Examples of operators:
-- <   >   <=   >=   <>   BETWEEN


-- 2) Basic example (inequality condition)

SELECT boys.boy,
       toys.toy
FROM boys
INNER JOIN toys
ON boys.toy_id <> toys.toy_id;

-- This returns combinations where toy_id values are different.
-- It does NOT match equal values.


-- 3) Conceptual example (range join)

-- NON-EQUIJOIN is often used for range matching.
--
-- Example scenario:
-- salary ranges table:
--
-- min_salary | max_salary | level
--
-- employee table:
-- salary
--
-- Join condition:
--
-- employee.salary BETWEEN ranges.min_salary AND ranges.max_salary


-- Example pattern:

SELECT e.employee_name,
       r.level
FROM employees AS e
INNER JOIN salary_ranges AS r
ON e.salary BETWEEN r.min_salary AND r.max_salary;


-- 4) Key differences vs EQUIJOIN
-
-- EQUIJOIN:
--   Uses "="
--   Most common (FK → PK relationships)
--
-- NON-EQUIJOIN:
--   Uses other comparison operators
--   Often used in analytical scenarios
--   Can produce more complex result sets


-- 5) Important note

-- Because conditions are not equality-based,
-- NON-EQUIJOIN can easily produce large result sets.
--
-- Always verify:
-- - expected number of rows
-- - logic of the comparison operator


-- Summary

-- NON-EQUIJOIN:
-- - Uses operators other than "="
-- - Common for range comparisons
-- - Less frequent in simple relational joins
-- - Requires careful testing