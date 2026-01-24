/* =========================================================
   Module 2 / Chapter 3 – DELETE and UPDATE practice
   Focus:
   - DELETE rows safely (SELECT first)
   - UPDATE one or many columns
   - UPDATE using basic math (cost = cost + 1)
   ========================================================= */

/* ---------------------------
   1) DELETE: always preview first
   --------------------------- */

-- Preview what would be deleted (safe check)
SELECT *
FROM clown_info
WHERE activities = 'dancing';

-- Delete the rows you confirmed
DELETE FROM clown_info
WHERE activities = 'dancing';


/* ---------------------------
   2) DELETE with more precise WHERE (AND/OR)
   --------------------------- */

-- Preview: only Mr. Hobo rows at Oakland Hospital
SELECT *
FROM clown_info
WHERE name = 'Mr. Hobo'
  AND last_seen = 'Oakland Hospital';

-- Delete: only those specific rows (targeted delete)
DELETE FROM clown_info
WHERE name = 'Mr. Hobo'
  AND last_seen = 'Oakland Hospital';


/* ---------------------------
   3) UPDATE: change one column value
   --------------------------- */

-- Preview which row will be updated
SELECT *
FROM clown_info
WHERE name = 'Mr. Hobo'
  AND last_seen = 'Dickson Park';

-- Update last_seen to Tracy's (escape apostrophe: Tracy''s)
UPDATE clown_info
SET last_seen = 'Tracy''s'
WHERE name = 'Mr. Hobo'
  AND last_seen = 'Dickson Park';


/* ---------------------------
   4) UPDATE: change multiple columns at once
   --------------------------- */

-- Example: rename a doughnut type value
-- Preview rows with the old value
SELECT *
FROM doughnut_ratings
WHERE type = 'plain glazed';

-- Update the type value
UPDATE doughnut_ratings
SET type = 'glazed'
WHERE type = 'plain glazed';


/* ---------------------------
   5) UPDATE: math operations on numeric columns
   --------------------------- */

-- Preview prices before increasing (optional)
SELECT drink_name, cost
FROM drink_info
WHERE drink_name IN ('Blue Moon', 'Oh My Gosh', 'Lime Fizz');

-- Increase cost by 1 for selected drinks
UPDATE drink_info
SET cost = cost + 1
WHERE drink_name IN ('Blue Moon', 'Oh My Gosh', 'Lime Fizz');


/* ---------------------------
   6) Reminder: omitting WHERE updates ALL rows!
   (do not run unless you really mean it)
   --------------------------- */

-- UPDATE drink_info
-- SET cost = cost + 1;
