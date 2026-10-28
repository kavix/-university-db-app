USE university_db;

-- Demonstration only: this denormalized shape repeats department and lecturer data.
CREATE TEMPORARY TABLE anomaly_demo AS
SELECT s.student_code, s.full_name, c.code AS course_code, c.title,
       l.name AS lecturer_name, d.code AS department_code, d.name AS department_name,
       e.grade
FROM enrollment e
JOIN student s ON s.id = e.student_id
JOIN course c ON c.id = e.course_id
JOIN lecturer l ON l.id = c.lecturer_id
JOIN department d ON d.id = l.department_id;

SELECT * FROM anomaly_demo;
