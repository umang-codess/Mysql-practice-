/*
SQL FUNDAMENTALS  -> COLLEGE STUDENT RECORDS
Topics Cover: CREATE DATABASE, USE, CREATE TABLE, INSERT, SELECT,
WHERE, ORDER BY and GROUP BY.

Run this file from top to bottom in MySQL Workbench.
*/

-- 1. CREATE DATABASE: create a database for college records.
CREATE DATABASE IF NOT EXISTS college_records;

-- 2. USE: select the database where we will work.
USE college_records;

-- 3. CREATE TABLE: define the structure for student information
-- PRIMARY KEY uniquely identifies each student.
-- AUTO_INCREMENT generates student_id automatically.
-- NOT NULL means the student's name must be provided and ye khali nhi ho sakta 
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    course VARCHAR(50),
    city VARCHAR(50)
);

-- 4. INSERT: add sample student records.
-- This DELETE keeps the example repeatable when you run the
-- complete file again. Do not casually delete real production data
DELETE FROM students;

INSERT INTO students (name, age, course, city)
VALUES
    ('Aarav Sharma', 19, 'BTech CSE', 'Varanasi'),
    ('Priya Singh', 20, 'BTech IT', 'Lucknow'),
    ('Rahul Verma', 19, 'BTech CSE', 'Prayagraj'),
    ('Neha Gupta', 21, 'BTech ECE', 'Varanasi'),
    ('Kabir Mishra', 20, 'BTech CSE', 'Kanpur'),
    ('Ananya Patel', 18, 'BTech IT', 'Varanasi');

-- 5. SELECT: read data from a table.
-- * means all columns.
SELECT * FROM students;

-- Select only the columns we need.
SELECT name, course FROM students;

-- 6. WHERE: return only rows that match a condition.
-- Find students who are exactly 19 years old.
SELECT * FROM students
WHERE age = 19;

-- Find students studying BTech CSE.
SELECT * FROM students
WHERE course = 'BTech CSE';

-- Find students older than 19.
SELECT * FROM students
WHERE age > 19;

-- AND means both conditions must be true
SELECT * FROM students
WHERE city = 'Varanasi' AND course = 'BTech IT';

-- 7. ORDER BY: sort query results.
-- ASC = ascending (small to large / A to Z)
-- DESC = descending (large to small / Z to A).
SELECT * FROM students
ORDER BY age ASC;

SELECT name, city FROM students
ORDER BY name DESC;

-- WHERE can be combined with ORDER BY.
-- First filter CSE students, then sort by age from high to low
SELECT * FROM students
WHERE course = 'BTech CSE'
ORDER BY age DESC;

-- 8. GROUP BY: group rows with the same value
-- COUNT(*) counts the number of rows in each group.
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

-- AVG() calculates the average age for each course
SELECT course, AVG(age) AS average_age
FROM students
GROUP BY course;

-- Count students from each city and show the largest group first.
SELECT city, COUNT(*) AS students_from_city
FROM students
GROUP BY city
ORDER BY students_from_city DESC;
