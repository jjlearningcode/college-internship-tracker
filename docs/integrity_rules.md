Integrity Rules

1. Introduction
Integrity constraints help ensure that the College Internship Application Tracker stores accurate, consistent, and valid information. The database uses primary keys, foreign keys, NOT NULL constraints, UNIQUE constraints, CHECK constraints, default values, and referential actions where appropriate.

2. Primary Keys
Each table should have a primary key that uniquely identifies every record.

- STUDENTS: student primary key
- COMPANIES: company primary key
- INTERNSHIP_TYPE: internship type primary key
- APPLICATION_STATUS: application status primary key
- POSITIONS: position primary key
- APPLICATIONS: application primary key
- INTERVIEWS: interview primary key
Primary keys prevent duplicate identification values and ensure that each record can be referenced reliably.

3. Foreign Keys
Foreign keys connect related tables and prevent records from referencing nonexistent parent records.
The database uses the following relationships:

- POSITIONS references COMPANIES.
- POSITIONS references INTERNSHIP_TYPE.
- APPLICATIONS references STUDENTS.
- APPLICATIONS references POSITIONS.
- APPLICATIONS references APPLICATION_STATUS.
- INTERVIEWS references APPLICATIONS.
These relationships help ensure that internship positions, applications, and interviews are connected to valid records.

4. NOT NULL Constraints
NOT NULL should be used for fields that are required for a valid record.
Examples include primary keys and required foreign keys. Other required fields may include a student's name, a company's name, a position title, an application date, and an application status reference.
Optional fields, such as descriptions, application notes, and interview locations, may allow NULL when the information is not available or required.

5. UNIQUE Constraints
UNIQUE constraints should prevent duplicate values when the database rules require uniqueness.
Potential examples include:

- A student's email address, if each student must have a unique email.
- A company's official website or another company identifier, if uniqueness is required.
- A combination of a student's ID and a position's ID in APPLICATIONS, if a student should not apply to the same position more than once.
These constraints should only be added when they match the project's actual business rules.

6. CHECK Constraints
CHECK constraints validate values before they are stored.

Examples include:
- Ensuring a deadline is not earlier than the posting date, when both dates are provided.
- Ensuring a numeric field, such as a minimum GPA if included, is within an accepted range.
A CHECK constraint should only be implemented when the relevant column exists and the rule matches the project's requirements.

7. Default Values
Default values can automatically supply values when a user does not provide them.
For example, an application creation date could default to the current date if the schema supports that behavior. A default application status could also be used if the project defines an appropriate starting status.
Defaults should be used only where they match the actual schema and business rules.

8. Referential Actions
Referential actions define what happens to related records when a referenced record is updated or deleted.
The database should use appropriate foreign-key actions to protect related information. For example, deleting an application should not accidentally leave its interview records without a valid application.
RESTRICT or NO ACTION can help prevent deletion of parent records that are still referenced. CASCADE may be appropriate for dependent records when deleting the parent is intended to delete those records as well.
The selected actions should match the actual foreign-key definitions in the database.

9. Conclusion
The integrity rules help protect the accuracy and consistency of the College Internship Application Tracker. Primary keys identify records, foreign keys maintain relationships, and additional constraints validate required and unique information. Defaults and referential actions 
help maintain consistent behavior when records are created, updated, or deleted.

10. AI Disclosure
Generative AI (ChatGPT) was used to help draft and organize this documentation, explain database integrity constraints, and identify examples of primary keys, foreign keys, NOT NULL, UNIQUE, CHECK, default values, and referential actions. The final documentation should be reviewed against the actual
SQL schema to ensure that the documented rules match the implemented database.
