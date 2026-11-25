-- Data Types and Constraints - Task 2: Constraints

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 0),
    joining_date DATE DEFAULT (CURRENT_DATE)
);

-- Valid example
INSERT INTO teachers (name, email, salary)
VALUES ('Neha Sharma', 'neha@example.com', 45000.00);

-- The following three statements intentionally violate different constraints.
-- Run each separately and note the error returned by MySQL.

-- 1. NOT NULL violation
-- INSERT INTO teachers (name, email, salary) VALUES (NULL, 'nullname@example.com', 30000.00);

-- 2. UNIQUE violation (the email already exists)
-- INSERT INTO teachers (name, email, salary) VALUES ('Another Teacher', 'neha@example.com', 35000.00);

-- 3. CHECK violation (salary must be greater than zero)
-- INSERT INTO teachers (name, email, salary) VALUES ('Invalid Salary', 'invalidsalary@example.com', -100.00);

SELECT * FROM teachers;
