-- DML - Task 2: Update and delete
USE school_db;

-- Increase every Maths score by 5
UPDATE marks
SET score = score + 5
WHERE subject = 'Maths';

-- Change hometown for student_id 2 to Noida
UPDATE students
SET hometown = 'Noida'
WHERE student_id = 2;

-- Increase age by 1 for students currently from Delhi
UPDATE students
SET age = age + 1
WHERE hometown = 'Delhi';

-- Try deleting student 6. This is expected to fail if marks reference student 6,
-- because the foreign key uses the default RESTRICT/NO ACTION behaviour.
-- Run separately to observe the foreign-key error:
-- DELETE FROM students WHERE student_id = 6;

-- To successfully delete student 6, first delete the dependent marks, then the student:
-- DELETE FROM marks WHERE student_id = 6;
-- DELETE FROM students WHERE student_id = 6;

-- Delete all marks below 20
DELETE FROM marks
WHERE score < 20;

-- Verify changes
SELECT * FROM students;
SELECT * FROM marks;
