-- DELIVERABLE 1: The Number of Retiring Employees by Title

-- Follow the instructions below to complete Deliverable 1 (steps 1-7)
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;

SELECT * FROM retirement_titles
fetch first 10 rows only;

-- Use Dictinct with Orderby to remove duplicate rows (steps 8-15)
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date >= '9999-01-01'
ORDER BY emp_no, title DESC;

SELECT * FROM unique_titles
fetch first 10 rows only;

-- Retrieve the number of employees by their most recent job title 
-- who are about to retire (steps 16-21)
SELECT COUNT(ut.emp_no),
ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;

-- DELIVERABLE 2: The Employees Eligible for the Mentorship Program

-- Write a query to create a Mentorship Eligibility table that holds the 
-- employees who are eligible to participate in a mentorship program (steps 1-11)

SELECT DISTINCT ON(e.emp_no) e.emp_no, 
    e.first_name, 
    e.last_name, 
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibilty
FROM employees as e
inner Join dept_employee as de
ON (e.emp_no = de.emp_no)
Left outer Join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31' and de.to_date >= '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM  mentorship_eligibilty
fetch first 10 rows only;

--Deliverable 3: a report to help manager prepare for the upcoming "silver Tsunami" (steps 1-3)

-- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
-- Roles per Staff and Department 
SELECT DISTINCT ON (d.dept_name) 
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title,
	d.dept_name
INTO unique_dept
FROM retirement_titles as rt
INNER JOIN dept_employee as de
ON (rt.emp_no = de.emp_no)
INNER JOIN departments as d
ON (d.dept_no = de.dept_no)

SELECT * FROM  unique_dept
fetch first 10 rows only;

-- How many roles will need to be fill per title and department?
SELECT ut.dept_name, ut.title, COUNT(ut.title) 
INTO rolls
FROM (SELECT title, dept_name from unique_dept) as ut
GROUP BY ut.dept_name, ut.title
ORDER BY ut.dept_name DESC;

SELECT * FROM  rolls

-- Qualified staff, retirement-ready to mentor the next generation
SELECT ut.dept_name, ut.title, ut.last_name, COUNT(ut.title) 
INTO get_staff
FROM (SELECT title, dept_name, last_name from unique_dept) as ut
WHERE ut.title IN ('Senior Engineer', 'Senior Staff', 'Technique Leader', 'Manager')
GROUP BY ut.dept_name, ut.title, ut.last_name
ORDER BY ut.dept_name DESC;

SELECT * FROM  get_staff
