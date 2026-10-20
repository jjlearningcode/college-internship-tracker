# College Internship Application Tracker

## Project Overview
The College Internship Application Tracker is a database project designed to help track students' internship applications, companies, available positions, application statuses, and interviews.

## Project Purpose
The purpose of this project is to organize internship application information in a structured database. It helps keep track of which positions students apply for, the status of each application, and any interviews associated with an application.

## Database Tables
The database contains seven tables:

1. **STUDENTS** — Stores student information.
2. **COMPANIES** — Stores company information.
3. **INTERNSHIP_TYPE** — Stores internship types and descriptions.
4. **APPLICATION_STATUS** — Stores application statuses.
5. **POSITIONS** — Stores internship position details.
6. **APPLICATIONS** — Stores student applications and their current statuses.
7. **INTERVIEWS** — Stores interview details associated with applications.

## Project Documentation
The `docs` folder contains the project documentation:

- [Project Proposal](docs/proposal.md)
- [Requirements](docs/requirements.md)
- [Business Rules](docs/business_rules.md)
- [Logical Schema](docs/logical_schema.md)
- [Data Dictionary](docs/data_dictionary.md)
- [Logical ERD Image](docs/logical_erd.png)

## Relationships
The database uses primary keys and foreign keys to connect related tables. One student can submit multiple applications, one company can offer multiple positions, and one application can have multiple interviews.

## Tools
- MySQL
- Git and GitHub
- Graphviz for the logical ERD

## Project Status
The project documentation includes the proposal, requirements, business rules, logical schema, data dictionary, and logical ERD.

## AI Disclosure
I used ChatGPT as an AI assistance tool to help organize project documentation, improve formatting, and review the logical schema and data dictionary. I reviewed the suggested content and made sure it aligned with my project. The project decisions and final submission were reviewed by me.
