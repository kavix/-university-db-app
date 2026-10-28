USE university_db;

-- The equivalent SQL shape for the department course query.
SELECT c.code, c.title, c.credits, l.name AS lecturer, d.name AS department
FROM course c
JOIN lecturer l ON l.id = c.lecturer_id
JOIN department d ON d.id = l.department_id
WHERE d.name = 'Computer Science';

-- JOIN FETCH equivalent: one query for a department and its lecturers.
SELECT d.code, d.name, l.name AS lecturer_name, l.email
FROM department d
LEFT JOIN lecturer l ON l.department_id = d.id
WHERE d.code = 'D01';
