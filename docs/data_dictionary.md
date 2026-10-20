# College Internship Application Tracker
## Data Dictionary

### 1. STUDENTS

| Field | Data Type | Constraints | Description |
|---|---|---|---|
| student_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique student ID |
| student_name | VARCHAR(100) | NOT NULL | Student's full name |
| email | VARCHAR(255) | NOT NULL, UNIQUE | Student's email |
| major | VARCHAR(100) | NOT NULL | Student's major |
| graduation_year | YEAR | NOT NULL | Expected graduation year |

### 2. COMPANIES

| Field | Data Type | Constraints | Description |
|---|---|---|---|
| company_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique company ID |
| company_name | VARCHAR(150) | NOT NULL | Company name |
| industry | VARCHAR(100) | NOT NULL | Company's industry |
| location | VARCHAR(150) | NOT NULL | Company's location |
| company_website | VARCHAR(255) | NULL | Company's website |

### 3. INTERNSHIP_TYPE

| Field | Data Type | Constraints | Description |
|---|---|---|---|
| type_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique internship type ID |
| type_name | VARCHAR(50) | NOT NULL | Internship type name |
| type_description | VARCHAR(255) | NULL | Description of the internship type |

### 4. APPLICATION_STATUS

| Field | Data Type | Constraints | Description |
|---|---|---|---|
| status_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique application status ID |
| status_name | VARCHAR(50) | NOT NULL | Application status name |
| status_description | VARCHAR(255) | NULL | Description of the status |

### 5. POSITIONS

| Field | Data Type | Constraints | Description |
|---|---|---|---|
| position_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique position ID |
| company_id | INT | NOT NULL, FOREIGN KEY | Company offering the position |
| type_id | INT | NOT NULL, FOREIGN KEY | Internship type |
| position_title | VARCHAR(150) | NOT NULL | Position title |
| description | TEXT | NULL | Position description |
| location | VARCHAR(150) | NOT NULL | Position location |
| application_deadline | DATE | NOT NULL | Application deadline |

### 6. APPLICATIONS

| Field | Data Type | Constraints | Description |
|---|---|---|---|
| application_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique application ID |
| student_id | INT | NOT NULL, FOREIGN KEY | Student who applied |
| position_id | INT | NOT NULL, FOREIGN KEY | Position applied for |
| status_id | INT | NOT NULL, FOREIGN KEY | Current application status |
| application_date | DATE | NOT NULL | Date the application was submitted |
| notes | TEXT | NULL | Additional application notes |

### 7. INTERVIEWS

| Field | Data Type | Constraints | Description |
|---|---|---|---|
| interview_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique interview ID |
| application_id | INT | NOT NULL, FOREIGN KEY | Related application |
| interview_date | DATETIME | NOT NULL | Date and time of the interview |
| interview_type | VARCHAR(50) | NOT NULL | Type of interview |
| interview_location | VARCHAR(150) | NULL | Interview location |
| interview_status | VARCHAR(50) | NOT NULL | Current interview status |
| notes | TEXT | NULL | Additional interview notes |

## Foreign Key References

- POSITIONS.company_id references COMPANIES.company_id
- POSITIONS.type_id references INTERNSHIP_TYPE.type_id
- APPLICATIONS.student_id references STUDENTS.student_id
- APPLICATIONS.position_id references POSITIONS.position_id
- APPLICATIONS.status_id references APPLICATION_STATUS.status_id
- INTERVIEWS.application_id references APPLICATIONS.application_id

## Key Definitions

- PRIMARY KEY: Uniquely identifies each record.
- FOREIGN KEY: Connects records between related tables.
- AUTO_INCREMENT: Automatically generates a new integer ID.
- UNIQUE: Prevents duplicate values.
- NOT NULL: Requires a value.
- NULL: Allows a value to be empty.
