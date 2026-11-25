-- DCL - Task 1: Create user and grant access
-- Run with an account that has CREATE USER and GRANT OPTION privileges.

CREATE USER 'teacher1'@'localhost' IDENTIFIED BY 'ChangeThis_Teacher1_123!';

GRANT SELECT, INSERT, UPDATE
ON school_db.marks
TO 'teacher1'@'localhost';

SHOW GRANTS FOR 'teacher1'@'localhost';
