create database school_db;
use school_db;

-- create a table called "employee"
create table students(
id INT PRIMARY KEY auto_increment,
name VARCHAR(50),
grade_level VARCHAR(20),
average_score DECIMAL(4,2)
);

-- insert to the table
INSERT INTO students(name, grade_level, average_score)
VALUES ("John Doe", "10th", 88.50),
		("Jane Smith", "10th", 91.20),
		("Mark Lee", "11th", 85.75),
		("Emily Davis", "12th", 90.00);
        
-- filter and extract values (query)
SELECT * FROM students;

-- retrieve specific columns
SELECT name, average_score FROM students;

-- update a record
SET SQL_SAFE_UPDATES=0;
UPDATE students
set average_score=90.00
WHERE name="John Doe";

-- delete a record (Mark Lee)
DELETE FROM students WHERE name = "Mark Lee";

-- filter and retrieve records
SELECT * FROM students WHERE grade_level="10th" AND average_score>90.00;

-- order records
SELECT * FROM students ORDER BY average_score desc;