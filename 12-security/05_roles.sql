-- File: 05_be_greg_exercise.sql
-- Description:
-- Practical exercise to apply user creation,
-- privilege management, and role assignment.
-- Think like a database administrator.


  -- SCENARIO

/*
You are Greg, the database administrator.

You need to:

1) Create a new user named manager.
2) Give the manager:
   - SELECT on job_listings
   - UPDATE on job_listings
3) Allow the manager to grant SELECT
   on job_listings to other users.
4) Create a role called data_viewer.
5) Grant SELECT on my_contacts to the role.
6) Assign the role to user elsie.
*/


  -- YOUR TASK – Write the SQL statements below


/* 1) Create user manager */


/* 2) Grant SELECT and UPDATE on job_listings */


/* 3) Grant SELECT with GRANT OPTION */


/* 4) Create role data_viewer */


/* 5) Grant SELECT on my_contacts to the role */


/* 6) Assign role to elsie */


  -- THINKING QUESTIONS

/*
- Why should manager not receive ALL privileges?
- What risk does WITH GRANT OPTION introduce?
- Why is using roles better than granting privileges
  individually to many users?
*/