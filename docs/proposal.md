Project Title: College Internship Application Tracker

Problem Description
It can be very difficult trying to keep track of applications from college students since they apply to multiple internships at different companies.
Students have to use spreadsheets, emails, or notes in order to organize the applications deadlines, positions, interviews, companies, and the application statuses.
This data base will provide a single organizational space where all internship application information can be managed and stored. This will help the college students keep track of the applications and the important dates.

Purpose of Database
The purpose is to assist college students manage their internship application.
It will store and manage the information of the companies that was applied to, applications, internship positions, application statuses, and interviews. Any user will be able to track the due dates of the applications,
if an interview has been requested, when and where they applied, and the current status of the applications.

Mini World
The concept of the mini world is a database for the internship application process regarding the college students.
Each company will have one or more internship positions, where students can apply to which ones are offered by the different companies. Each application submition will provide the internship position, application date, current status, and the deadline.
Depending on the positon it may require an interview from the student where they would recieve an email from the company regarding the interview date, location, type and the status.
It will be mainly focused on managing the applications and the related information. But a reminder is that it's not to manage none of these: employee payroll, hiring proccess for the companies, or university addmissions.

Intended Users:
-College Users
-Students in need/searching for internships
-Academic Advisors
-Career service staff
-Authorized users helping the students manage the applications

Major Data that Must Be Stored:
	Students
-Student ID
-Student Name
-Email Address
-Major
Graduation Year

	Companies
-Company ID
-Company Name
-Location
-Industry
-Company Website

	Internship Position
-Position ID
-Company ID
-Description
-Position Title
-Internship type
-Location
-Application deadline

	Applications
-Application ID
-Student ID
-Position ID
-Application date
-Application Status
-Notes

	Interviews
-Interview ID
-Application ID
-Interview date
-Interview type
-interview location
-Interview status
-Notes

Questions the Database should answer eventually
1 Which internships has a student applied to?
2.What is the current status of a specific internship application?
3.How many internships has the student applied for?
4.Which students have interviews scheduled?
5.Which applications are still pending?
6.Which companies offer internship positions?

Inital Business Rules
1.Each company must have a unique company ID
2.Each student must have a unique student ID
3.Each application must be associated with one student and one internship position
4.Every application must have an application date and a current application status
5.An application can have multiple interviews is needed/necessary
6.A company can have multipe internship applications
7.A student can apply to multiple internship applications

AI Use Disclosure
I used ChatGPT(GPT-5.6 Luna) by OpenAI, it is a generative artifical intelligence tool that is based off a LLM(Large Language Model).
It was used to help assist me with brainstomring and organizing my database project proposal. Everything has been reviewd and edited before submission.
