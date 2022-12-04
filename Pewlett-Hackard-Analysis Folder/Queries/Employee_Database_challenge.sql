--Retrieve the data from the tables for review

SElECT emp_no,
	first_name,
	last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT title,
	from_date,
	to_date
FROM titles;

--Join the tables

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

--Create retirement titles table

SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

--Create Mentorship Eligibility Table

SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM titles;

SELECT Distinct ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	dem.from_date,
	dem.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as dem
	ON (e.emp_no = dem.emp_no)
	INNER JOIN titles as ti
	ON (e.emp_no = ti.emp_no)
WHERE dem.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31');

SELECT * FROM mentorship_eligibility;
