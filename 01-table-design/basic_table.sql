-- Lesson 1: Basic table creation
-- This skript can be run multiple times without errors

CREATE DATABASE IF NOT EXISTS gregs_list;
USE gregs_list;

-- Remove table if it already exists

DROP TABLE IF EXISTS my_contacts;

-- Create the my_contacts table

CREATE TABLE my_contacts
(
last_name VARCHAR(30),
first_name VARCHAR(20),
email VARCHAR(50),
birthday DATE,
profession VARCHAR(50),
location VARCHAR(50),
status VARCHAR(20),
interests VARCHAR(100),
seeking VARCHAR(100)
);

-- Verify the table creation

SHOW TABLES;
DESC my_contacts;