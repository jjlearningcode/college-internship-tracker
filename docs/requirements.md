College Internship Tracker

Entities

	Student
	1. Student ID
	2. Student Name
	3. Email Address
	4. Major
	5. Graduation Year

	Company
	1. Company ID
	2. Company Name
	3. Industry
	4. Location
	5. Company Website

	Internship Position
	1. Postion ID
	2. Company ID
	3. Position Title
	4. Description
	5. Location
	6. Internship Type
	7. Application Deadline

	Application
	1. Application ID
	2. Student ID
	3. Postion ID
	4. Application Date
	5. Application Status
	6. Notes

	Interview
	1. Interview ID
	2. Application ID
	3. Interview Date
	4. Interview Type
	5. Interview Status
	6. Notes

	Application Status
	1. Status ID
	2. Status Name
	3. Status Description

	Internship Type
	1. Type ID
	2. Type Name
	3. Type Description

Key Attributes:
- Student ID is the key attribute for Student
- Company ID is the key attribute for Company
- Position ID is the key attribute for the Internship Position
- Application ID is the key attribute for the Applications completed
- Interview ID is the key attribute for any Interviews that will be needed
- Status ID is the key attribute for all the Applications Statuses
- Type ID is the key attribute for the Internship Type

Relationships:
- A student can submit zero or many applications
- Each application must belong to exactly one student
- A company can offer zero or many internship postions
- Each internship position msut belong to at exactly one company
- An internship position can receive zero or many applications
- Each applicaition must be exactly for one internship position
- An application can have zero or many interviews
- Each interview must belong to exactly one appliation
- An application must have exactly one application status
- An appliation status can be used by zero or many applications
- An internship position must have exactly one internship type
- AN internship type can be used by zero or many internship positions
