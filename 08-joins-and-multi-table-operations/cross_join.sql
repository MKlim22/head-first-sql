-- Focus: CROSS JOIN (Cartesian Product)
-- Goal: understand what happens when no matching condition is used


-- 1) What is a CROSS JOIN?

-- A CROSS JOIN returns every possible combination
-- of rows from two tables.
--
-- If table A has m rows
-- and table B has n rows
--
-- Result = m × n rows


-- 2) Explicit CROSS JOIN syntax


SELECT *
FROM toys
CROSS JOIN boys;

-- This returns all combinations of toys and boys.


-- 3) Implicit CROSS JOIN (comma syntax)

-- Writing multiple tables separated by commas
-- without a WHERE or ON condition
-- produces the same Cartesian product.

SELECT *
FROM toys, boys;

-- This is equivalent to CROSS JOIN.


-- 4) Why this matters

-- If you forget the ON condition in an INNER JOIN,
-- you can accidentally create a Cartesian product.
--
-- Example mistake:

SELECT *
FROM toys
INNER JOIN boys;

-- This will produce an error in most SQL engines
-- because ON is required.
--
-- But if someone writes:

SELECT *
FROM toys, boys;

-- without a WHERE condition,
-- the result explodes in size.


-- 5) When is CROSS JOIN useful?

-- Rare in daily analytics.
-- Used when you intentionally need:
-- - all combinations
-- - generating test data
-- - matrix-style comparisons


-- Summary

-- CROSS JOIN:
-- - does NOT use a join condition
-- - returns every possible combination
-- - can dramatically increase row count
-- - must be used carefully