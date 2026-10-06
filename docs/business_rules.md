Business Rules

	Student and Application
	1. Every application must belong to exactly one student
	2. A student may apply to multiple internship positions
	3. A student must have a unique student ID
	4. A student can submit zero or many applications

	Company and Internship Position
	1. Every internship position must belong to exactly one company
	2. A company may offer different internship positions
	3. A company can offer zero or many internship positions
	4. Each company must have a unique Comapny ID

	Internship Position and Application
	1. Every application must be exactly for one internship posistion
	2. An internship position can receive zero or many applications
	3. Each internship position must have a unique Position ID

	Application and Interview
	1. Each interview must have a unique interview ID
	2. Every interview must be associated with exactly one application
	3. An application may have multiple interviews if necessary
	4. An application can have zero or many interviews

	Application and Application status
	1. One application status can be used by zero or many applications
	2. Each application status must have a uniqye Status ID
	3. Every application must have exactly one current application status

	Internship Position and Internship Type
	1. One internship type can be used by zero or many internship positions
	2. Every internship position must have exactly one internship type
	3. Each internsship type must have a unique status ID

	Participation Constraints
	- Internship position participation in the internship type relationship is total because every position must have a type
	- Internship position participation in the company relationship is total because every position must belong to a company
	- Application participation in the application status relationship is total because every application must have a current status
	- Application participation in the interview relationship partial because to an application may not have interviews 
	- Application participation in the internship position relationship is total because every application must be for a position
	- Application participation in the student relationship is total because every application must belong to a student
	- Student participation in the application relationship is partial because a student may have no applications
	- Company participation in the internshipship position relationship is partial because a company may have no internship positions
	- Interview participation in the application relationship is total because every interview must belong to an application
