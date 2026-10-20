# College Internship Application Tracker
## Data Dictionary

### STUDENTS

| Table | Column | Type | Key | NULL | Description |
|---|---|---|---|---|---|
| STUDENTS | student_id | INT AUTO_INCREMENT | PK | No | Unique student identifier |
| STUDENTS | student_name | VARCHAR(100) | | No | Student's full name |
| STUDENTS | email | VARCHAR(255) | UNIQUE | No | Student's unique email address |
| STUDENTS | major | VARCHAR(100) | | No | Student's academic major |
| STUDENTS | graduation_year | YEAR | | No | Student's expected graduation year |

### COMPANIES

| Table | Column | Type | Key | NULL | Description |
|---|---|---|---|---|---|
| COMPANIES | company_id | INT AUTO_INCREMENT | PK | No | Unique company identifier |
| COMPANIES | company_name | VARCHAR(150) | | No | Name of the company |
| COMPANIES | industry | VARCHAR(100) | | No | Company's industry |
| COMPANIES | location | VARCHAR(150) | | No | Company's location |
| COMPANIES | company_website | VARCHAR(255) | | Yes | Company's website URL |

### INTERNSHIP_TYPE

| Table | Column | Type | Key | NULL | Description |
|---|---|---|---|---|---|
| INTERNSHIP_TYPE | type_id | INT AUTO_INCREMENT | PK | No | Unique internship type identifier |
| INTERNSHIP_TYPE | type_name | VARCHAR(50) | | No | Name of the internship type |
| INTERNSHIP_TYPE | type_description | VARCHAR(255) | | Yes | Description of the internship type |

### APPLICATION_STATUS

| Table | Column | Type | Key | NULL | Description |
|---|---|---|---|---|---|
| APPLICATION_STATUS | status_id | INT AUTO_INCREMENT | PK | No | Unique application status identifier |
| APPLICATION_STATUS | status_name | VARCHAR(50) | | No | Name of the application status |
| APPLICATION_STATUS | status_description | VARCHAR(255) | | Yes | Description of the status |

### POSITIONS

| Table | Column | Type | Key | NULL | Description |
|---|---|---|---|---|---|
| POSITIONS | position_id | INT AUTO_INCREMENT | PK | No | Unique internship position identifier |
| POSITIONS | company_id | INT | FK | No | Company offering the position |
| POSITIONS | type_id | INT | FK | No | Type of internship |
| POSITIONS | position_title | VARCHAR(150) | | No | Title of the internship position |
| POSITIONS | description | TEXT | | Yes | Details about the position |
| POSITIONS | location | VARCHAR(150) | | No | Location of the internship |
| POSITIONS | application_deadline | DATE | | No | Deadline to apply for the position |

### APPLICATIONS

| Table | Column | Type | Key | NULL | Description |
|---|---|---|---|---|---|
| APPLICATIONS | application_id | INT AUTO_INCREMENT | PK | No | Unique application identifier |
| APPLICATIONS | student_id | INT | FK | No | Student who submitted the application |
| APPLICATIONS | position_id | INT | FK | No | Position being applied for |
| APPLICATIONS | status_id | INT | FK | No | Current status of the application |
| APPLICATIONS | application_date | DATE | | No | Date the application was submitted |
| APPLICATIONS | notes | TEXT | | Yes | Additional application notes | 
### INTERVIEWS

| Table | Column | Type | Key | NULL | Description |
|---|---|---|---|---|---|
| INTERVIEWS | interview_id | INT AUTO_INCREMENT | PK | No | Unique interview identifier |
| INTERVIEWS | application_id | INT | FK | No | Application associated with the interview |
| INTERVIEWS | interview_date | DATETIME | | No | Date and time of the interview |
| INTERVIEWS | interview_type | VARCHAR(50) | | No | Type of interview |
| INTERVIEWS | interview_location | VARCHAR(150) | | Yes | Location of the interview |
| INTERVIEWS | interview_status | VARCHAR(50) | | No | Current status of the interview |
| INTERVIEWS | notes | TEXT | | Yes | Additional interview notes |

## Foreign Key References

- POSITIONS.company_id references COMPANIES.company_id.
- POSITIONS.type_id references INTERNSHIP_TYPE.type_id.
- APPLICATIONS.student_id references STUDENTS.student_id.
- APPLICATIONS.position_id references POSITIONS.position_id.
- APPLICATIONS.status_id references APPLICATION_STATUS.status_id.
- INTERVIEWS.application_id references APPLICATIONS.application_id.

## Key Definitions

- PK: Primary Key
- FK: Foreign Key
- UNIQUE: Values must be unique
- NULL: The column may contain a NULL value
- NOT NULL: The column must contain a value
