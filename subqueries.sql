/*
03-ADVANCED-SQL / SUBQUERIES
Real-world example: Find students using results from another query.

PREREQUISITES:
- Run 01-sql-fundamentals.sql.
- Run constraints.sql if you also want to try the course subquery.

A subquery is a query placed inside another SQL query.
*/

USE college_records;

-- 1. Students older than the average age.
-- Inner query calculates the average age.
-- Outer query finds students whose age is above that average.
SELECT *
FROM students
WHERE age > (
    SELECT AVG(age)
    FROM students
);

-- 2. Students studying the same course as Aarav Sharma.
-- Inner query finds Aarav's course.
-- Outer query finds students in that course.
SELECT name, course
FROM students
WHERE course = (
    SELECT course
    FROM students
    WHERE name = 'Aarav Sharma'
    LIMIT 1
);

-- 3. Courses whose department is Computer Science.
-- Inner query finds the department ID.
-- Outer query finds courses belonging to that department.
SELECT course_name, course_code
FROM courses
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Computer Science'
);

-- 4. IN with a subquery:
-- Find students whose course is one of the courses
-- offered by the departments listed in the courses table.
SELECT name, course
FROM students
WHERE course IN (
    SELECT
        CASE course_code
            WHEN 'CS301' THEN 'BTech CSE'
            WHEN 'IT202' THEN 'BTech IT'
            WHEN 'EC201' THEN 'BTech ECE'
        END
    FROM courses
);
