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