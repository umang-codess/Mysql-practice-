/*
03-ADVANCED-SQL / JOINS
Real-world example: Connect college courses with departments.

PREREQUISITES:
- Run 01-sql-fundamentals.sql.
- Run constraints.sql to create departments and courses.

A JOIN combines related rows from multiple tables.
*/

USE college_records;

-- 1. INNER JOIN
-- Shows only records that have a matching department.
SELECT
    courses.course_name,
    courses.course_code,
    departments.department_name
FROM courses
INNER JOIN departments
    ON courses.department_id = departments.department_id;

-- 2. LEFT JOIN
-- Shows every department, even if it has no matching course.
-- Course columns will be NULL when there is no match.
SELECT
    departments.department_name,
    courses.course_name
FROM departments
LEFT JOIN courses
    ON departments.department_id = courses.department_id;

-- 3. RIGHT JOIN
-- Shows every course from the right-side table and its
-- matching department. (In this example every course has one.)
SELECT
    departments.department_name,
    courses.course_name
FROM departments
RIGHT JOIN courses
    ON departments.department_id = courses.department_id;

-- 4. JOIN with a filter
-- Show courses that belong to the Computer Science department.
SELECT
    courses.course_name,
    courses.course_code,
    departments.department_name
FROM courses
INNER JOIN departments
    ON courses.department_id = departments.department_id
WHERE departments.department_name = 'Computer Science';
