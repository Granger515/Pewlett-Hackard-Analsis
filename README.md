# Pewlett-Hackard-Analsis
Pewlett-Hackardhas requested ana analysis of their staff to determine the number of employees who will retire soon. A further analysis is requested to determine the number of employees who would be eligible to be mentors for new employees.

##Overview
The overview is divided into two parts.

###Number of Retiring Employees by Title
1. Employee first and last names were pulled from the employee table. Employee titles, start date, and end date were pulled from the employee titles table and the data was joined on the employee ID number. This was restricted to employees born between January 1st, 1952 and December 31st, 1955. These are the employees who will retire soon at the time of the analysis. These employees were sorted by employee number and a csv file with this data was saved.

2. The previously created table was restricted to the last title held by the retiring employee. This data was put into a table and exported as a csv file.

3. A table was created with the frequencies of each title of individuals that would retire soon and saved as a csv file.

###Employees Eligible for the Mentorship Program
1. Employee first names, last names, and birth dates were pulled from the employee table. Only the first instance of the employee number were retrieved. Employee dates of start and end dates in their department were pulled from the department employee table. This data was joined with the data pulled from the employees table on the employee ID number. Employee titles were pulled from the employee titles table and the data was joined on the employee ID number. This was restricted to employees born between January 1st, 1965 and December 31st, 1965 and to those employees still employed at the organization. These are the employees who will retire in a short time but would be eligible to be trained as mentors. This data was placed into a table and exported as a csv file.

##Results
The results are divided into two parts.

###Number of Retiring Employees by Title
1. Of the over 300,000 positions that have ever been filled at the organization almost 134,000 of them have been held by individuals who will be eligible for retirement soon.

2. A large portion of the organization workforce, over 70,000 employees, will be eligible for retirement soon.

3. The breakdown of the titles of those eligible to retire soon are:

Senior Engineers 25,916
Senior Staff 24,926
Engineers 9,285
Staff 7,636
Technique Leader 3,603
Assistant Engineer 1090
Manager 2

###Employees Eligible for the Mentorship Program
1. Just over 1500 employees are eligible for the mentorship program.

##Summary
1. There are almost 70,000 positions that will need to be filled soon at the organization. This is a considerable portion of the existing workforce. 

2. The number of employees eligible to act as mentors is unlikely to be sufficient to meet the needs of the organization in the short term.

3. A further analysis of the breakdown of the departments where mentorship eligibility is located revealed the following:

Development - 396
Production - 322
Sales - 244
Customer Service - 120
Marketing - 117
Research - 103
Human Resources - 97
Quality Management - 86
Finance - 64

4. The retirement numbers by department are as follows:

Development - 9281
Production - 8174
Sales - 5680
Customer Service - 2597
Marketing - 2199
Research - 2413
Human Resources - 1953
Quality Management - 2234
Finance - 1908

5. The ratio of available mentors, assuming all potential mentors agree to participate, to positions to be filled ranges from approximately 1 to 19 in Marketing to 1 to 30 in Finance. Mentorship in some or all departments may be strained compared to need.
