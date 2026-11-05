-- 02: Create a table
-- Make sure the sql_practice database exists first.

USE sql_practice;

CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    course VARCHAR(50),
    city VARCHAR(50)
);
