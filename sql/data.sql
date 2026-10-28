USE university_db;

INSERT INTO department (code, name) VALUES
    ('D01', 'Computer Science'),
    ('D02', 'Information Technology');

INSERT INTO lecturer (name, email, department_id) VALUES
    ('Dr. Perera', 'perera@university.example', (SELECT id FROM department WHERE code = 'D01')),
    ('Dr. Fernando', 'fernando@university.example', (SELECT id FROM department WHERE code = 'D01')),
    ('Dr. Silva', 'silva@university.example', (SELECT id FROM department WHERE code = 'D02'));

INSERT INTO course (code, title, credits, lecturer_id) VALUES
    ('CS101', 'Database Systems', 3, (SELECT id FROM lecturer WHERE email = 'perera@university.example')),
    ('CS102', 'Programming Fundamentals', 3, (SELECT id FROM lecturer WHERE email = 'fernando@university.example')),
    ('CS201', 'Web Development', 4, (SELECT id FROM lecturer WHERE email = 'perera@university.example')),
    ('ST201', 'Systems Analysis', 3, (SELECT id FROM lecturer WHERE email = 'silva@university.example'));

INSERT INTO student (student_code, full_name, email) VALUES
    ('S001', 'Kamal Silva', 'kamal.silva@example.com'),
    ('S002', 'Nimali Perera', 'nimali.perera@example.com'),
    ('S003', 'Dilini Fernando', 'dilini.fernando@example.com'),
    ('S004', 'Ruwan Jayasinghe', 'ruwan.jayasinghe@example.com');

INSERT INTO enrollment (student_id, course_id, grade) VALUES
    ((SELECT id FROM student WHERE student_code = 'S001'), (SELECT id FROM course WHERE code = 'CS101'), 'A'),
    ((SELECT id FROM student WHERE student_code = 'S001'), (SELECT id FROM course WHERE code = 'CS102'), 'B+'),
    ((SELECT id FROM student WHERE student_code = 'S002'), (SELECT id FROM course WHERE code = 'CS101'), 'B'),
    ((SELECT id FROM student WHERE student_code = 'S002'), (SELECT id FROM course WHERE code = 'CS102'), 'A-'),
    ((SELECT id FROM student WHERE student_code = 'S003'), (SELECT id FROM course WHERE code = 'ST201'), 'A'),
    ((SELECT id FROM student WHERE student_code = 'S004'), (SELECT id FROM course WHERE code = 'ST201'), 'B+'),
    ((SELECT id FROM student WHERE student_code = 'S004'), (SELECT id FROM course WHERE code = 'CS201'), 'A');
