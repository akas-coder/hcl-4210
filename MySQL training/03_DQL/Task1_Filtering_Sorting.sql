-- DQL - Task 1: Filtering and sorting
USE school_db;

-- 1. Display all students
SELECT * FROM students;

-- 2. Display name and hometown with an alias
SELECT name AS `Student Name`, hometown
FROM students;

-- 3. Students aged between 10 and 15 (inclusive)
SELECT * FROM students
WHERE age BETWEEN 10 AND 15;

-- 4. Students whose name starts with A
SELECT * FROM students
WHERE name LIKE 'A%';

-- 5. Students from Delhi or Noida, sorted by age descending
SELECT * FROM students
WHERE hometown IN ('Delhi', 'Noida')
ORDER BY age DESC;

-- 6. Three oldest students
SELECT * FROM students
ORDER BY age DESC
LIMIT 3;

-- 7. Distinct hometowns (the assessment originally calls these cities)
SELECT DISTINCT hometown
FROM students;
