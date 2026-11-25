-- DDL - Task 2: Modify the structure
USE school_db;

CREATE TABLE marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    score INT,
    CONSTRAINT fk_marks_students
        FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Add phone column
ALTER TABLE students ADD phone INT;

-- Change phone data type to VARCHAR(15)
ALTER TABLE students MODIFY phone VARCHAR(15);

-- Rename city to hometown
ALTER TABLE students RENAME COLUMN city TO hometown;

-- Create an index on name
CREATE INDEX idx_students_name ON students(name);

-- Copy only the structure, then drop the backup table
CREATE TABLE students_backup LIKE students;
DROP TABLE students_backup;

-- Verify final structures
DESCRIBE students;
DESCRIBE marks;
