-- File: 06_be_greg_solution.sql
-- Description:
-- Solution to the security scenario exercise.
--Includes user creation, privileges, grant option, roles.


  -- 1) Create user manager

CREATE USER manager IDENTIFIED BY 'StrongPass123!';


  -- 2) Grant SELECT and UPDATE on job_listings

GRANT SELECT, UPDATE
ON job_listings
TO manager;


  -- 3) Allow manager to grant SELECT on job_listings
  -- (delegation privilege)

GRANT SELECT
ON job_listings
TO manager
WITH GRANT OPTION;


  -- 4) Create role data_viewer

CREATE ROLE data_viewer;


  -- 5) Grant SELECT on my_contacts to the role

GRANT SELECT
ON my_contacts
TO data_viewer;


  -- 6) Assign role to elsie

GRANT data_viewer
TO elsie;