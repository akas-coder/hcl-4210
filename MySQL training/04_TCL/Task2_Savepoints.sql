-- TCL - Task 2: Savepoints
USE school_db;

-- Use a transaction with savepoints.
-- Use unused email addresses so the inserts do not conflict with existing data.
START TRANSACTION;

INSERT INTO students (name, email, age, hometown, admission_date)
VALUES ('Savepoint Student One', 'savepoint1@example.com', 12, 'Delhi', CURDATE());

SAVEPOINT s1;

INSERT INTO students (name, email, age, hometown, admission_date)
VALUES ('Savepoint Student Two', 'savepoint2@example.com', 13, 'Noida', CURDATE());

SAVEPOINT s2;

-- Delete one mark record (if mark_id 10 exists)
DELETE FROM marks
WHERE mark_id = 10;

-- Undo changes made after s2. The delete is undone; student two remains.
ROLLBACK TO SAVEPOINT s2;
SELECT * FROM students WHERE email IN ('savepoint1@example.com', 'savepoint2@example.com');
SELECT * FROM marks WHERE mark_id = 10;

-- Undo changes made after s1. Student two is removed; student one remains.
ROLLBACK TO SAVEPOINT s1;
SELECT * FROM students WHERE email IN ('savepoint1@example.com', 'savepoint2@example.com');

COMMIT;

-- Note: In MySQL, statements such as CREATE TABLE, ALTER TABLE, DROP TABLE
-- and TRUNCATE TABLE cause implicit commits. They are not rolled back like
-- ordinary transactional DML statements.
