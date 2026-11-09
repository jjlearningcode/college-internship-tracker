 Normalization

 1. Introduction

The purpose of normalization is to organize the database to reduce duplicate information and maintain data integrity. The College Internship Application Tracker uses separate tables for students, companies, internship positions, application statuses,
 internship types, applications, and interviews.
This design helps keep information organized and makes it easier
 to update and retrieve data without unnecessary duplication.

 2. First Normal Form (1NF)

A table satisfies First Normal Form when each column contains a single value, each record can be
 uniquely identified, and there are no repeating groups of values.
The database follows 1NF because the tables store individual pieces
 of information in separate columns. For example, a student's information is stored in the STUDENTS table, while application information is stored in the APPLICATIONS table.
Each table uses a primary key to uniquely identify its records. Information such as application
 details and interview details is stored in separate records rather than repeating multiple values in one field.

 3. Second Normal Form (2NF)

A table satisfies Second Normal Form when it meets 1NF and every non-key attribute depends on the entire primary key.
The database uses primary keys to identify individual records in each table. The design separates student information, company information, internship positions, applications, and interviews into their own tables.
For example, student information belongs in the STUDENTS table instead of being copied into every application record. Company information belongs in the COMPANIES table instead of being repeated for every internship position.
Because the tables use individual primary keys, the design avoids partial dependencies on a composite primary key.

 4. Third Normal Form (3NF)

A table satisfies Third Normal Form when it meets 2NF and non-key attributes depend on the primary key rather than on other non-key attributes.
The database separates information that has its own independent meaning into different tables.
Examples include:
- COMPANIES stores company information.
- POSITIONS stores internship position information and references the related company.
- INTERNSHIP_TYPE stores internship type information.
- APPLICATION_STATUS stores application status information.
- APPLICATIONS references the student, position, and application status.
- INTERVIEWS stores interview information associated with an application.
This structure reduces transitive dependencies and unnecessary duplication. For example, company details do not need to be stored repeatedly in the APPLICATIONS table because the related position connects to the company.

 5. Changes Made During Normalization

The schema was organized into separate tables to reduce redundancy and improve data organization. Foreign keys were used to connect related records.
The logical schema also allows certain optional information to be NULL when it is not required. Examples include type descriptions, status descriptions, position descriptions, application notes, and interview locations.
These decisions allow the database to store information consistently without requiring optional details for every record.
No additional normalization changes are claimed here beyond the design decisions described above.

 6. Conclusion

The College Internship Application Tracker is designed to follow 1NF, 2NF, and 3NF by storing individual values, 
separating related entities, and connecting tables through primary and foreign keys. This structure reduces redundant data and makes the database easier to maintain as students track multiple internship applications and interviews.

7. AI Disclosure
Generative AI (ChatGPT) was used to help draft and organize this documentation, explain the concepts of First, Second, and Third Normal Form, and describe how normalization applies to the College Internship Application Tracker database. 
The final documentation should be reviewed against the actual database schema to ensure accuracy.
