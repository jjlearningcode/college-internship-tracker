
-- Milestone 5: Create Tables
-- College Internship Application Tracker

USE college_internship_tracker;

-- 1. STUDENTS
CREATE TABLE IF NOT EXISTS STUDENTS (
    student_id INT AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    major VARCHAR(100) NOT NULL,
    graduation_year YEAR NOT NULL,
    PRIMARY KEY (student_id)
);

-- 2. COMPANIES
CREATE TABLE IF NOT EXISTS COMPANIES (
    company_id INT AUTO_INCREMENT,
    company_name VARCHAR(150) NOT NULL,
    industry VARCHAR(100) NOT NULL,
    location VARCHAR(150) NOT NULL,
    company_website VARCHAR(255),
    PRIMARY KEY (company_id)
);

-- 3. INTERNSHIP_TYPE
CREATE TABLE IF NOT EXISTS INTERNSHIP_TYPE (
    type_id INT AUTO_INCREMENT,
    type_name VARCHAR(50) NOT NULL,
    type_description VARCHAR(255),
    PRIMARY KEY (type_id)
);

-- 4. APPLICATION_STATUS
CREATE TABLE IF NOT EXISTS APPLICATION_STATUS (
    status_id INT AUTO_INCREMENT,
    status_name VARCHAR(50) NOT NULL,
    status_description VARCHAR(255),
    PRIMARY KEY (status_id)
);

-- 5. POSITIONS
CREATE TABLE IF NOT EXISTS POSITIONS (
    position_id INT AUTO_INCREMENT,
    company_id INT NOT NULL,
    type_id INT NOT NULL,
    position_title VARCHAR(150) NOT NULL,
    description TEXT,
    location VARCHAR(150) NOT NULL,
    application_deadline DATE NOT NULL,
    PRIMARY KEY (position_id)
);

-- 6. APPLICATIONS
CREATE TABLE IF NOT EXISTS APPLICATIONS (
    application_id INT AUTO_INCREMENT,
    student_id INT NOT NULL,
    position_id INT NOT NULL,
    status_id INT NOT NULL,
    application_date DATE NOT NULL,
    notes TEXT,
    PRIMARY KEY (application_id)
);

-- 7. INTERVIEWS
CREATE TABLE IF NOT EXISTS INTERVIEWS (
    interview_id INT AUTO_INCREMENT,
    application_id INT NOT NULL,
    interview_date DATETIME NOT NULL,
    interview_type VARCHAR(50) NOT NULL,
    interview_location VARCHAR(150),
    interview_status VARCHAR(50) NOT NULL,
    notes TEXT,
    PRIMARY KEY (interview_id)
);