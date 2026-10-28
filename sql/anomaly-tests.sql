USE university_db;

-- Functional dependency checks for the normalized design.
SELECT code, COUNT(*) AS rows_per_code
FROM department
GROUP BY code
HAVING COUNT(*) > 1;

SELECT email, COUNT(*) AS rows_per_email
FROM student
GROUP BY email
HAVING COUNT(*) > 1;

SELECT student_id, course_id, COUNT(*) AS duplicate_enrollments
FROM enrollment
GROUP BY student_id, course_id
HAVING COUNT(*) > 1;
