USE university_db;

-- Intentionally invalid statements for the report. Run one at a time and roll back.
-- Duplicate department code violates department.code UNIQUE.
-- INSERT INTO department (code, name) VALUES ('D01', 'Duplicate Department');

-- Duplicate student/course pair violates enrollment.uq_enrollment.
-- INSERT INTO enrollment (student_id, course_id, grade) VALUES (1, 1, 'C');

-- Unknown lecturer department violates the foreign key.
-- INSERT INTO lecturer (name, email, department_id) VALUES ('Invalid', 'invalid@example.com', 9999);
