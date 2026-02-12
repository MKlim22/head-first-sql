-- Focus: Third Normal Form (3NF)
-- Rule: no transitive dependencies


-- PART 1: Example that violates 3NF
-- The table is already in 2NF.
-- It has a single primary key.
-- However, it contains a transitive dependency.

CREATE TABLE courses_bad (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_name VARCHAR(100),
    instructor_phone VARCHAR(20)
);

-- Explanation:
-- instructor_phone depends on instructor_name,
-- not directly on the primary key (course_id).

-- This creates a transitive dependency:
-- course_id → instructor_name → instructor_phone

-- Because of this design:
-- If an instructor teaches multiple courses,
-- their phone number would be repeated.
-- Updating the phone number would require changing it in multiple rows.
-- This leads to redundancy and update anomalies.


-- PART 2: Correct design (3NF compliant)
-- Solution: separate instructor data into its own table.

-- Step 1: Create instructors table
CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(100),
    instructor_phone VARCHAR(20)
);

-- Step 2: Create courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

-- Now:
-- instructor_phone depends only on instructor_id
-- course_name depends only on course_id
-- No non-key column depends on another non-key column
-- Fully compliant with 3NF


-- PART 3: Insert example data

INSERT INTO instructors (instructor_id, instructor_name, instructor_phone)
VALUES
(1, 'Dr. Smith', '123-456-789'),
(2, 'Prof. Adams', '987-654-321');

INSERT INTO courses (course_id, course_name, instructor_id)
VALUES
(101, 'SQL Basics', 1),
(102, 'Advanced SQL', 1),
(201, 'Data Modeling', 2);


-- PART 4: Verify result

SELECT *
FROM instructors;

SELECT *
FROM courses;


-- 3NF Summary

-- 1. The table must already be in 2NF.
-- 2. No non-key column may depend on another non-key column.
-- 3. All non-key attributes must depend ONLY on the primary key.