# College Internship Application Tracker
## Logical Schema

### 1. STUDENTS
- student_id INT PRIMARY KEY AUTO_INCREMENT
- student_name VARCHAR(100) NOT NULL
- email VARCHAR(255) NOT NULL UNIQUE
- major VARCHAR(100) NOT NULL
- graduation_year YEAR NOT NULL

### 2. COMPANIES
- company_id INT PRIMARY KEY AUTO_INCREMENT
- company_name VARCHAR(150) NOT NULL
- industry VARCHAR(100) NOT NULL
- location VARCHAR(150) NOT NULL
- company_website VARCHAR(255) NULL

### 3. INTERNSHIP_TYPE
- type_id INT PRIMARY KEY AUTO_INCREMENT
- type_name VARCHAR(50) NOT NULL
- type_description VARCHAR(255)

### 4. APPLICATION_STATUS
- status_id INT PRIMARY KEY AUTO_INCREMENT
- status_name VARCHAR(50) NOT NULL
- status_description VARCHAR(255)

### 5. POSITIONS
- position_id INT PRIMARY KEY AUTO_INCREMENT
- company_id INT NOT NULL
- type_id INT NOT NULL
- position_title VARCHAR(150) NOT NULL
- description TEXT
- location VARCHAR(150) NOT NULL
- application_deadline DATE NOT NULL

Foreign keys:
- company_id REFERENCES COMPANIES(company_id)
- type_id REFERENCES INTERNSHIP_TYPE(type_id)

### 6. APPLICATIONS
- application_id INT PRIMARY KEY AUTO_INCREMENT
- student_id INT NOT NULL
- position_id INT NOT NULL
- status_id INT NOT NULL
- application_date DATE NOT NULL
- notes TEXT

Foreign keys:
- student_id REFERENCES STUDENTS(student_id)
- position_id REFERENCES POSITIONS(position_id)
- status_id REFERENCES APPLICATION_STATUS(status_id)

### 7. INTERVIEWS
- interview_id INT PRIMARY KEY AUTO_INCREMENT
- application_id INT NOT NULL
- interview_date DATETIME NOT NULL
- interview_type VARCHAR(50) NOT NULL
- interview_location VARCHAR(150)
- interview_status VARCHAR(50) NOT NULL
- notes TEXT

Foreign keys:
- application_id REFERENCES APPLICATIONS(application_id)

## Relationships and Cardinality

1. STUDENTS to APPLICATIONS: One-to-many (1:M).
   A student may have zero or many applications. Each application
   belongs to exactly one student.

2. COMPANIES to POSITIONS: One-to-many (1:M).
   A company may offer zero or many positions. Each position
   belongs to exactly one company.

3. POSITIONS to APPLICATIONS: One-to-many (1:M).
   A position may receive zero or many applications. Each
   application is for exactly one position.

4. APPLICATION_STATUS to APPLICATIONS: One-to-many (1:M).
   A status may be used by zero or many applications. Each
   application has exactly one current status.

5. INTERNSHIP_TYPE to POSITIONS: One-to-many (1:M).
   A type may be used by zero or many positions. Each position
   has exactly one internship type.

6. APPLICATIONS to INTERVIEWS: One-to-many (1:M).
   An application may have zero or many interviews. Each
   interview belongs to exactly one application.

## Design Notes

- Primary keys uniquely identify records in each table.
- Foreign keys maintain relationships between related tables.
- AUTO_INCREMENT generates new integer IDs automatically.
- NOT NULL identifies required attributes.
- Applications and interviews are stored separately so one
  application can have multiple interviews.
- Application statuses and internship types are stored in
  separate tables to avoid repeatedly storing their descriptions.
