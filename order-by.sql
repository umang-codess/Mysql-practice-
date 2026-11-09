-- ORDER BY: Sort query results
-- ASC = ascending; DESC = descending
USE sql_practice;

-- Sort by age, lowest to highest
SELECT * FROM students ORDER BY age ASC;

-- Sort names from Z to A
SELECT * FROM students ORDER BY name DESC;
