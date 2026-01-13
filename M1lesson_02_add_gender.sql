-- Lesson 02: Adding a new column to the contacts table

USE gregs_list;
DROP TABLE IF EXISTS my_contacts;

CREATE TABLE my_contacts
(
last_name VARCHAR(30),
first_name VARCHAR(20),
email VARCHAR(50),
gender CHAR(1),
birthday DATE,
profession VARCHAR(50),
location VARCHAR(50),
status VARCHAR(20),
interests VARCHAR(100),
seeking VARCHAR(100)
);

DESC my_contacts;