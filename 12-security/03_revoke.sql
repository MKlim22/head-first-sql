-- File: 03_revoke.sql
-- Description:
-- This script demonstrates how to remove privileges
-- from database users.


  -- PRACTICE SECTION – Learning Examples

/*
REVOKE Syntax:

REVOKE privilege ON object FROM user;
*/


/* Example 1 – Revoke SELECT privilege */

REVOKE SELECT
ON clown_info
FROM elsie;


/* Example 2 – Revoke multiple privileges */

REVOKE INSERT, UPDATE
ON my_contacts
FROM jim;


/* Example 3 – Revoke privilege from multiple users */

REVOKE SELECT
ON job_listings
FROM frank, joe;


/* Example 4 – Revoke privilege on entire database */

REVOKE SELECT
ON greg_list.*
FROM analyst;


/* Example 5 – Revoke only GRANT OPTION */

REVOKE GRANT OPTION
ON DELETE
ON chores
FROM happy;


  -- CASCADE vs RESTRICT

/*
CASCADE:
Removes the privilege from the user
AND from all users who received it from them.
*/

REVOKE DELETE
ON chores
FROM sleepy
CASCADE;


/*
RESTRICT:
Prevents the revoke if other users depend on it.
Returns an error instead.
*/

REVOKE DELETE
ON chores
FROM sleepy
RESTRICT;


  -- CLEAN VERSION – Interview Ready

/* Remove specific privilege */

REVOKE privilege_name
ON database_name.table_name
FROM user_name;

/* Remove all DML privileges */

REVOKE SELECT, INSERT, UPDATE, DELETE
ON database_name.table_name
FROM user_name;