-- File: 04_roles.sql
-- Description:
-- This script shows how to create roles, grant privileges
-- to roles, assign roles to users, and drop roles.


  -- 1) CREATE ROLE

CREATE ROLE data_entry;


  -- 2) GRANT PRIVILEGES TO A ROLE
  -- (Treat the role name like a username)

GRANT SELECT, INSERT
ON some_table
TO data_entry;


  -- 3) ASSIGN ROLE TO A USER

GRANT data_entry
TO doc;


  -- 4) DROP ROLE
  -- (Remove the role when it’s no longer needed)

DROP ROLE data_entry;


  -- WITH ADMIN OPTION (Roles)

/*
WITH ADMIN OPTION on a role:
- The user can grant that role to other users.
*/

GRANT data_entry
TO doc
WITH ADMIN OPTION;


  -- REVOKE ROLE (Removing a role from a user)

REVOKE data_entry
FROM doc;


  -- CASCADE vs RESTRICT with ROLES

/*
If Doc granted the role onward (because he had ADMIN OPTION),
then:

CASCADE:
- removes from Doc AND everyone he granted it to
*/

REVOKE data_entry
FROM doc
CASCADE;


/*
RESTRICT:
- fails with an error if other users would be affected
*/

REVOKE data_entry
FROM doc
RESTRICT;