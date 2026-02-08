-- Lesson 3: NOT NULL Constraint and insert Statement

CREATE DATABASE IF NOT EXISTS gregs_list;
USE gregs_list;
DROP TABLE IF EXISTS my_contacts;

CREATE TABLE my_contacts
(
last_name VARCHAR(30) NOT NULL,
first_name VARCHAR(20) NOT NULL,
email VARCHAR(50) NOT NULL,
gender CHAR(1) NOT NULL,
birthday DATE NOT NULL,
-- In this exercise, birthday is required (book example)
profession VARCHAR(50) NOT NULL,
location VARCHAR(50) NOT NULL,
status VARCHAR(20) NOT NULL,
interests VARCHAR(100) NOT NULL,
seeking VARCHAR(100) NOT NULL
);

INSERT INTO my_contacts
(last_name, first_name, email, gender, birthday, profession, location, status, interests, seeking)
VALUES
('Andersen','Jilian','jill_andersen@breakneckpizza.com','F','1980-09-05','Technical writer','Palo Alto, CA','Single','Kayaking,Reptiles','Relationship,Friends');

-- Verify the inserted data

SELECT * FROM my_contacts;