-- 03: Insert sample records
-- Make sure the students table has been created first.

USE sql_practice;

INSERT INTO students (name, age, course, city)
VALUES
    ('Aarav Sharma', 19, 'BTech CSE', 'Varanasi'),
    ('Priya Singh', 20, 'BTech IT', 'Lucknow'),
    ('Rahul Verma', 19, 'BTech CSE', 'Prayagraj');

-- Check the inserted records
SELECT * FROM students;
