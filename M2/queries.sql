-- 1) Basic SELECT: show all rows
SELECT * FROM easy_drinks;

-- 2) WHERE with equal sign
SELECT drink_name FROM easy_drinks
WHERE main = 'soda';

--3) WHERE with AND
SELECT drink_name FROM easy_drinks
WHERE main = 'soda' AND amount2 >= 1;

-- 4) Greater than (numeric comparison)
SELECT drink_name FROM easy_drinks
WHERE main = 'soda' AND amount2 > 1;

-- 5) Not equal
SELECT drink_name FROM easy_drinks
WHERE main <> 'soda';

-- 6) WHERE with OR
SELECT drink_name
FROM easy_drinks
WHERE main = 'cherry juice'
OR second = 'cherry juice';

-- 7) WHERE with AND vs OR (same column, different values)
-- Correct usage with OR
SELECT drink_name
FROM easy_drinks
WHERE main = 'orange juice'
OR main = 'apple juice';
