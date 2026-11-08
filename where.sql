-- WHERE: Filter rows using a condition
USE sql_practice;

-- Students who are 19 years old
SELECT * FROM students WHERE age = 19;

-- Students studying BTech CSE
SELECT * FROM students WHERE course = 'BTech CSE';

-- Students older than 19
SELECT * FROM students WHERE age > 19;
