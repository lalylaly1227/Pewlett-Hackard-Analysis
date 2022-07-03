# Pewlett-Hackard-Analysis

## Overview of the analysis
The purpose of this analysis was to determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program. We also need to prepare the manager for the “silver tsunami” as many current employees reach retirement age.

### Deliverable 1: The Number of Retiring Employees by Title
Build a retirement titles table using an ERD created using SQL queries. We need to create a table that contains the most recent title for each employee and the use the count () function to create another table that holds current employees that are retirement-age. The original file had a total number of records of 133,776, but it is because duplicates exist due to all the titles that a person has ever held while working with Pewlett Hackard. To fix this, we need to get the last title they held only. This created a new unique titles table with 72,458 records.

Retirement Titles Table:

<img width="575" alt="retirement_titles_table" src="https://user-images.githubusercontent.com/105124485/177053660-d5aefd5c-5b1e-44d1-8ec3-f31a31cb9ce5.png">

Unique Titles Table:

<img width="426" alt="unique_titles_table" src="https://user-images.githubusercontent.com/105124485/177053667-a39070aa-16e7-4d2a-a000-872a5525855e.png">

### Deliverable 2: The Employees Eligible for the Mentorship Program
Using the ERD as reference and my knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965, and December 31, 1965. There were a total of 1549 employees eligible for the mentorship program.

Mentorship Eligibility Table:

<img width="670" alt="memtorship_eligibility" src="https://user-images.githubusercontent.com/105124485/177053758-199d5498-8b1c-49da-950f-a4b5d7914fce.png">

### Deliverable 3: A written report on the employee database analysis
The report includes an overview of the analysis, results with images that list the four major points from the two analyses as described above. Plus, two additional queries/tables that provide more insight into the upcoming "silver tsunami."

Unique Departments Table:

<img width="544" alt="unique_dept" src="https://user-images.githubusercontent.com/105124485/177053820-07043636-4bd0-48e1-99e6-441004fd9f35.png">

Qualified, Retirement-Ready Employees Table:

<img width="431" alt="get_staff" src="https://user-images.githubusercontent.com/105124485/177053883-36951059-ad21-446f-99f9-4e4ec97395ce.png">

## Resources

### Data Sources: 
•	supplied:
departments.csv, 
dept_emp.cvs,
dept_manager.csv, 
employees.csv, 
salaries.csv, 
titles.csv
•	created:
retirement_titles.csv,
unique_titles.csv,
retiring_titles.csv,
mentorship_eligibility.csv
•	additional tables created:
unique_dept.csv,
get_staff.csv
		
### Software:
Online resources: PostgreSQL, pgAdmin

## Results
Found the number of employees that would be retiring, and the amount of potential new jobs needed to fill those positions.  Also created a mentoring eligible table to train all the new hires. We prepared the manager for the “silver tsunami.” The challenge was to delete the duplicate titles to create a more realistic list.

## Summary
We found that the number of individuals available for mentorship role was 1549 employees from employees born in year 1965. Ideally, we should hire the same number of employees that are retiring, but advances in technology and company structure should also be considered before making final decision on the number of new hires. 
