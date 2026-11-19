
-- Milestone 6: SQL Queries
-- College Internship Application Tracker

USE college_internship_tracker;

-- 1. Basic SELECT: Display all students.
SELECT *
FROM STUDENTS;

-- 2. WHERE: Find students majoring in Cybersecurity.
SELECT student_name, major
FROM STUDENTS
WHERE major = 'Cybersecurity';

-- 3. Sorting: Display internship positions by deadline.
SELECT position_title, location, application_deadline
FROM POSITIONS
ORDER BY application_deadline;

-- 4. Multi-table JOIN: Show internship positions and their companies.
SELECT POSITIONS.position_title, COMPANIES.company_name
FROM POSITIONS
JOIN COMPANIES
ON POSITIONS.company_id = COMPANIES.company_id;

-- 5. Three-table JOIN: Show student names, positions, and application statuses.
SELECT STUDENTS.student_name, POSITIONS.position_title,
       APPLICATION_STATUS.status_name
FROM APPLICATIONS
JOIN STUDENTS
ON APPLICATIONS.student_id = STUDENTS.student_id
JOIN POSITIONS
ON APPLICATIONS.position_id = POSITIONS.position_id
JOIN APPLICATION_STATUS
ON APPLICATIONS.status_id = APPLICATION_STATUS.status_id;

-- 6. GROUP BY: Count how many positions each company offers.
SELECT COMPANIES.company_name, COUNT(POSITIONS.position_id) AS total_positions
FROM COMPANIES
JOIN POSITIONS
ON COMPANIES.company_id = POSITIONS.company_id
GROUP BY COMPANIES.company_name;

-- 7. Aggregate function: Find the latest application date.
SELECT MAX(application_date) AS latest_application
FROM APPLICATIONS;

-- 8. HAVING: Find students who submitted more than one application.
SELECT STUDENTS.student_name, COUNT(APPLICATIONS.application_id) AS total_applications
FROM STUDENTS
JOIN APPLICATIONS
ON STUDENTS.student_id = APPLICATIONS.student_id
GROUP BY STUDENTS.student_id, STUDENTS.student_name
HAVING COUNT(APPLICATIONS.application_id) > 1;

-- 9. Subquery: Find companies that offer internship positions.
SELECT company_name
FROM COMPANIES
WHERE company_id IN (
    SELECT company_id
    FROM POSITIONS
);

-- 10. NULL: Find companies without a listed website.
SELECT company_name, company_website
FROM COMPANIES
WHERE company_website IS NULL;

-- 11. Important business question:
-- Which internship positions have received applications?
SELECT POSITIONS.position_title, COUNT(APPLICATIONS.application_id) AS total_applications
FROM POSITIONS
JOIN APPLICATIONS
ON POSITIONS.position_id = APPLICATIONS.position_id
GROUP BY POSITIONS.position_id, POSITIONS.position_title;
