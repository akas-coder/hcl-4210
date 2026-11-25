-- DQL - Task 2: Aggregates and joins
USE school_db;

-- 1. Count students in each hometown
SELECT hometown, COUNT(*) AS student_count
FROM students
GROUP BY hometown;

-- 2. Average, highest and lowest score for each subject
SELECT
    subject,
    AVG(score) AS average_score,
    MAX(score) AS highest_score,
    MIN(score) AS lowest_score
FROM marks
GROUP BY subject;

-- 3. Subjects whose average score is above 60
SELECT subject, AVG(score) AS average_score
FROM marks
GROUP BY subject
HAVING AVG(score) > 60;

-- 4. Student name, subject and score using INNER JOIN
SELECT s.name, m.subject, m.score
FROM students AS s
INNER JOIN marks AS m
    ON s.student_id = m.student_id;

-- 5. All students, including those without marks, using LEFT JOIN
SELECT s.name, m.subject, m.score
FROM students AS s
LEFT JOIN marks AS m
    ON s.student_id = m.student_id;

-- 6. Students who scored above the overall average score
SELECT DISTINCT s.student_id, s.name
FROM students AS s
INNER JOIN marks AS m
    ON s.student_id = m.student_id
WHERE m.score > (SELECT AVG(score) FROM marks);

-- 7. Rank students by total marks
SELECT
    s.student_id,
    s.name,
    SUM(m.score) AS total_marks,
    RANK() OVER (ORDER BY SUM(m.score) DESC) AS student_rank
FROM students AS s
INNER JOIN marks AS m
    ON s.student_id = m.student_id
GROUP BY s.student_id, s.name;
