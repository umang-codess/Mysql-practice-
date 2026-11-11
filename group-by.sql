-- GROUP BY: Group rows with the same value
-- COUNT() and AVG() summarize each group
USE sql_practice;

-- Count students in each course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

-- Calculate average age for each course
SELECT course, AVG(age) AS average_age
FROM students
GROUP BY course;
