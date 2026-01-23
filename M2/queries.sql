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

-- 8) BETWEEN (range filtering)
SELECT drink_name
FROM drink_info
WHERE carbs BETWEEN 3 AND 5;

-- 9) NOT BETWEEN
SELECT drink_name
FROM drink_info
WHERE NOT carbs BETWEEN 3 AND 5;

-- 10) LIKE (pattern matching)
SELECT date_name
FROM black_book
WHERE date_name LIKE 'A%';

-- 11) NOT LIKE
SELECT date_name
FROM black_book
WHERE NOT date_name LIKE 'B%';

-- 12) IN (replace multiple OR conditions)
SELECT date_name
FROM black_book
WHERE rating IN ('innovative','fabulous','delightful','pretty good');

-- 13) NOT IN
SELECT date_name
FROM black_book
WHERE rating NOT IN ('innovative','fabulous','delightful','pretty good');

-- 14) IS NULL
SELECT *
FROM easy_drinks
WHERE second IS NULL;

-- 15) IS NOT NULL
SELECT *
FROM easy_drinks
WHERE second IS NOT NULL;
