
-- Milestone 6: Seed Data
-- College Internship Application Tracker
USE college_internship_tracker;

-- STUDENTS (8 records)
INSERT INTO STUDENTS (student_name, email, major, graduation_year) VALUES
('Avery Johnson', 'avery.johnson@example.com', 'Information Technology', 2027),
('Jordan Williams', 'jordan.williams@example.com', 'Computer Science', 2028),
('Morgan Davis', 'morgan.davis@example.com', 'Data Analytics', 2027),
('Taylor Brown', 'taylor.brown@example.com', 'Cybersecurity', 2028),
('Riley Smith', 'riley.smith@example.com', 'Information Technology', 2029),
('Cameron Wilson', 'cameron.wilson@example.com', 'Computer Science', 2027),
('Casey Moore', 'casey.moore@example.com', 'Business', 2028),
('Skyler Thomas', 'skyler.thomas@example.com', 'Data Analytics', 2029);

-- COMPANIES (6 records)
INSERT INTO COMPANIES (company_name, industry, location, company_website) VALUES
('Capital Technology Group', 'Technology', 'Washington, DC', 'https://example.com/capital'),
('Metro Data Solutions', 'Data Analytics', 'Washington, DC', 'https://example.com/metro'),
('Northstar Cybersecurity', 'Cybersecurity', 'Arlington, VA', 'https://example.com/northstar'),
('Civic Digital Partners', 'Government Technology', 'Washington, DC', 'https://example.com/civic'),
('BrightPath Consulting', 'Consulting', 'Bethesda, MD', 'https://example.com/brightpath'),
('Greenline Financial', 'Finance', 'Washington, DC', NULL);

-- INTERNSHIP TYPES (4 records)
INSERT INTO INTERNSHIP_TYPE (type_name, type_description) VALUES
('Paid', 'Internship provides hourly pay or salary'),
('Unpaid', 'Internship does not provide monetary compensation'),
('Hybrid', 'Internship combines remote and in-person work'),
('Remote', 'Internship is completed remotely');

-- APPLICATION STATUSES (5 records)
INSERT INTO APPLICATION_STATUS (status_name, status_description) VALUES
('Submitted', 'Application has been submitted'),
('Under Review', 'Application is being reviewed'),
('Interview', 'Student has been invited to interview'),
('Accepted', 'Student has received an offer'),
('Rejected', 'Application was not successful');

-- POSITIONS (10 records)
INSERT INTO POSITIONS
(company_id, type_id, position_title, description, location, application_deadline)
VALUES
(1, 1, 'IT Support Intern', 'Assist with technical support', 'Washington, DC', '2027-02-15'),
(1, 3, 'Cybersecurity Intern', 'Help monitor security systems', 'Washington, DC', '2027-03-01'),
(2, 1, 'Data Analyst Intern', 'Analyze business data', 'Washington, DC', '2027-02-20'),
(2, 4, 'Junior Data Intern', 'Prepare and organize datasets', 'Remote', '2027-03-10'),
(3, 1, 'Security Operations Intern', 'Assist the security operations team', 'Arlington, VA', '2027-02-25'),
(3, 3, 'Network Security Intern', 'Support network security projects', 'Arlington, VA', '2027-03-05'),
(4, 1, 'Technology Intern', 'Support government technology projects', 'Washington, DC', '2027-03-15'),
(5, 2, 'Business Analyst Intern', 'Assist with business research', 'Bethesda, MD', '2027-02-28'),
(6, 1, 'Financial Data Intern', 'Analyze financial information', 'Washington, DC', '2027-03-12'),
(6, 4, 'Technology Research Intern', 'Research financial technology', 'Remote', '2027-03-20');

-- APPLICATIONS (18 records)
INSERT INTO APPLICATIONS
(student_id, position_id, status_id, application_date, notes)
VALUES
(1, 1, 2, '2026-11-01', 'Application under review'),
(1, 2, 3, '2026-11-02', 'Interview invitation received'),
(1, 3, 1, '2026-11-03', 'Application submitted'),
(2, 2, 1, '2026-11-04', 'Waiting for response'),
(2, 4, 4, '2026-11-05', 'Offer received'),
(2, 5, 2, '2026-11-06', 'Application under review'),
(3, 3, 3, '2026-11-07', 'Interview scheduled'),
(3, 4, 1, '2026-11-08', 'Application submitted'),
(3, 9, 5, '2026-11-09', 'Application rejected'),
(4, 5, 2, '2026-11-10', 'Waiting for response'),
(4, 6, 1, '2026-11-11', 'Application submitted'),
(5, 7, 1, '2026-11-12', 'Application submitted'),
(5, 8, 3, '2026-11-13', 'Interview invitation received'),
(6, 1, 5, '2026-11-14', 'Application rejected'),
(6, 9, 2, '2026-11-15', 'Application under review'),
(7, 8, 1, '2026-11-16', 'Application submitted'),
(8, 10, 4, '2026-11-17', 'Offer received'),
(8, 3, 2, '2026-11-18', 'Application under review');

-- INTERVIEWS (9 records)
INSERT INTO INTERVIEWS
(application_id, interview_date, interview_type, interview_location, interview_status, notes)
VALUES
(2, '2026-11-25 10:00:00', 'Virtual', 'Microsoft Teams', 'Scheduled', 'First interview'),
(5, '2026-11-26 13:00:00', 'Virtual', 'Zoom', 'Completed', 'Interview completed'),
(7, '2026-11-27 11:00:00', 'In-Person', 'Washington, DC', 'Scheduled', 'Technical interview'),
(10, '2026-11-28 14:00:00', 'Virtual', 'Microsoft Teams', 'Scheduled', 'Initial interview'),
(13, '2026-11-29 09:00:00', 'In-Person', 'Bethesda, MD', 'Completed', 'Business interview'),
(1, '2026-11-30 15:00:00', 'Virtual', 'Zoom', 'Scheduled', 'Screening interview'),
(4, '2026-12-01 10:00:00', 'Virtual', 'Microsoft Teams', 'Scheduled', 'Initial interview'),
(15, '2026-12-02 12:00:00', 'In-Person', 'Washington, DC', 'Completed', 'Final interview'),
(17, '2026-12-03 14:00:00', 'Virtual', 'Zoom', 'Scheduled', 'Final interview');
