-- File: 02_grant_basic.sql
-- Description:
-- This script demonstrates how to grant privileges
-- to database users.


  -- PRACTICE SECTION – Learning Examples

/*
GRANT Syntax:

GRANT privilege ON object TO user;

Privileges:
- SELECT
- INSERT
- UPDATE
- DELETE
- ALL
*/


/* Example 1 – Grant SELECT on one table */

GRANT SELECT
ON clown_info
TO elsie;


/* Example 2 – Grant multiple privileges */

GRANT SELECT, INSERT
ON my_contacts
TO jim;


/* Example 3 – Grant privileges to multiple users */

GRANT SELECT
ON job_listings
TO frank, joe;


/* Example 4 – Grant privileges on entire database */

GRANT SELECT
ON greg_list.*
TO analyst;


/* Example 5 – Grant privilege on specific column */

GRANT SELECT (salary)
ON job_current
TO analyst;


  -- CLEAN VERSION – Interview Ready

/* Grant read access */

GRANT SELECT ON database_name.table_name TO user_name;

/* Grant full DML access */

GRANT SELECT, INSERT, UPDATE, DELETE
ON database_name.table_name
TO user_name;

/* Grant access to all tables in database */

GRANT SELECT ON database_name.* TO user_name;