-- File: 01_create_user.sql
-- Description:
-- This script demonstrates how to create database users
-- and assign passwords.


 --  PRACTICE SECTION – Learning Examples

/*
Why individual accounts matter:
- Accountability
- Auditing
- Security control
- Principle of least privilege
*/

/* Example 1 – Create a simple user */

CREATE USER elsie IDENTIFIED BY 'StrongPassword123';

/* Example 2 – Change root password (MySQL example) */

SET PASSWORD FOR root@localhost = PASSWORD('NewSecurePassword');


  -- CLEAN VERSION – Interview Ready

/* Create user */

CREATE USER analyst IDENTIFIED BY 'SecurePass!';

/* Change password */

ALTER USER analyst IDENTIFIED BY 'NewSecurePass!';