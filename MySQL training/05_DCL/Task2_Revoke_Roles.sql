-- DCL - Task 2: Revoke privileges and use roles
-- Run with an account that has permission to manage users, roles and grants.

-- Revoke UPDATE from teacher1
REVOKE UPDATE
ON school_db.marks
FROM 'teacher1'@'localhost';

-- Create a role with SELECT access to all tables in school_db
CREATE ROLE 'viewer';

GRANT SELECT
ON school_db.*
TO 'viewer';

-- Create guest1 and assign the viewer role
CREATE USER 'guest1'@'localhost' IDENTIFIED BY 'ChangeThis_Guest1_123!';

GRANT 'viewer' TO 'guest1'@'localhost';
SET DEFAULT ROLE 'viewer' TO 'guest1'@'localhost';

-- List grants
SHOW GRANTS FOR 'teacher1'@'localhost';
SHOW GRANTS FOR 'guest1'@'localhost';
SHOW GRANTS FOR 'guest1'@'localhost' USING 'viewer';

-- Drop both users as requested
DROP USER 'teacher1'@'localhost';
DROP USER 'guest1'@'localhost';

-- Optional cleanup: remove the role too
DROP ROLE 'viewer';
