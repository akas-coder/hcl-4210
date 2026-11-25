-- TCL - Task 1: Commit and rollback
USE school_db;

-- Disable autocommit for this session
SET autocommit = 0;

-- Choose a mark record and note its original score
SELECT mark_id, student_id, subject, score
FROM marks
WHERE mark_id = 1;

-- Start a transaction and update one score
START TRANSACTION;
UPDATE marks
SET score = 100
WHERE mark_id = 1;

-- Verify the uncommitted change in this session
SELECT * FROM marks WHERE mark_id = 1;

-- Undo the update
ROLLBACK;

-- The score should return to its original value
SELECT * FROM marks WHERE mark_id = 1;

-- Repeat, but commit the update
START TRANSACTION;
UPDATE marks
SET score = 100
WHERE mark_id = 1;

SELECT * FROM marks WHERE mark_id = 1;

COMMIT;

-- The score remains 100 after COMMIT
SELECT * FROM marks WHERE mark_id = 1;

-- Restore normal autocommit behaviour
SET autocommit = 1;
