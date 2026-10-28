# Lab 06 Submission Checklist

Prepare one PDF containing your name, student ID, date, course code, course name, and GitHub repository URL.

## Required written work

- Functional dependencies from the original flat table.
- 1NF, 2NF, and 3NF table designs.
- Primary keys and foreign keys.
- Crow's-foot ER diagram.
- Answers to the SQL and JPA query questions in Task 12.
- Relevant Java and SQL code.

## Screenshots

### Anomaly demonstration

- Redundancy count for Dr. Perera's email.
- Update anomaly showing two different emails for the same lecturer.
- Insert anomaly error when adding a course without a student.
- Delete anomaly showing that deleting the only student removes the course from the flat table.

### Normalized database

- ER diagram from phpMyAdmin Designer or MySQL Workbench.
- `SHOW TABLES`, `DESCRIBE student`, `DESCRIBE enrollment`, and representative data.
- Join that reconstructs the original registration information.

### Fixed-schema experiments

- Errors for the invalid statements in `schema-violations.sql`.
- `ALTER TABLE student ADD COLUMN phone ...` and `DESCRIBE student` showing the changed schema.
- Application startup failure showing the missing `phone` column with `ddl-auto=validate`.
- Successful startup after removing `phone` and restoring `ddl-auto=validate`.

### REST and JPA queries

Capture the browser or Postman response for each endpoint:

- `/api/students`
- `/api/students?name=sil`
- `/api/students/S001`
- `/api/students/S001/enrollments`
- `/api/courses`
- `/api/courses?minCredits=4`
- `/api/courses?department=Computer%20Science`
- `/api/courses/CS101/students`
- `/api/departments/D01/lecturers`
- `/api/enrollments?grade=A`
- `/api/reports/course-counts`

Also capture the console SQL for:

- The department-filtered course query and its joined tables.
- The grade-filtered enrollment query and its additional selects.
- The department lecturers query using `JOIN FETCH`.

### GitHub

- Repository showing the `sql/` folder and Java source files.
- Pull request from `feature/jpa-mapping` into `main` titled `Add 3NF database design and JPA mapping`.
- Confirm that `target/` is not included in the repository.
