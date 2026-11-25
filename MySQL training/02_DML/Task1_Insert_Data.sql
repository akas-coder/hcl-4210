-- DML - Task 1: Insert data
USE school_db;

-- Insert one student using a single-row INSERT
INSERT INTO students (name, email, age, hometown, admission_date, phone)
VALUES ('Aarav Sharma', 'aarav@example.com', 12, 'Delhi', '2026-11-01', '9876543210');

-- Insert five more students using one multi-row INSERT
INSERT INTO students (name, email, age, hometown, admission_date, phone)
VALUES
('Ananya Verma', 'ananya@example.com', 13, 'Noida', '2026-11-02', '9876543211'),
('Aman Gupta', 'aman@example.com', 14, 'Delhi', '2026-11-03', '9876543212'),
('Priya Singh', 'priya@example.com', 11, 'Ghaziabad', '2026-11-04', '9876543213'),
('Arjun Kumar', 'arjun@example.com', 15, 'Noida', '2026-11-05', '9876543214'),
('Meera Patel', 'meera@example.com', 10, 'Delhi', '2026-11-06', '9876543215');

-- Insert at least 10 marks across Maths, Science and English
INSERT INTO marks (student_id, subject, score)
VALUES
(1, 'Maths', 78),
(1, 'Science', 85),
(2, 'English', 92),
(2, 'Maths', 66),
(3, 'Science', 58),
(3, 'English', 72),
(4, 'Maths', 49),
(4, 'Science', 63),
(5, 'English', 88),
(6, 'Maths', 35);

-- Intentional test: this should fail because email must be unique.
-- Run this statement separately to observe the duplicate-key error.
-- INSERT INTO students (name, email, age) VALUES ('Duplicate Student', 'aarav@example.com', 12);

-- Verify inserted data
SELECT * FROM students;
SELECT * FROM marks;
