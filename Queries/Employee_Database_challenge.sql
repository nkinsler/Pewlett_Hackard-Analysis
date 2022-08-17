-- DELIVERABLE 1

-- Create Retirement Titles table
SELECT e.emp_no, e.first_name, e.last_name,
	t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles 
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Use Count to create a table
SELECT count(title) "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles

-- DELIVERABLE 2
SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees as e
JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (t.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility

-- Use Count to create a table
SELECT count(title) "count", title
INTO mentoring_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY count DESC;

SELECT * FROM mentoring_titles

--Deliverable 3
SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.dept_no, de.from_date, de.to_date, d.dept_name
INTO department_eligibility
FROM employees as e
JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
JOIN departments as d
ON (de.dept_no = d.dept_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM department_eligibility

-- Use Count to create a table
SELECT count(dept_name) "count", dept_name
INTO mentoring_dept
FROM department_eligibility
GROUP BY dept_name
ORDER BY count DESC;

SELECT * FROM mentoring_dept

-- Create Retirement Dept table
SELECT e.emp_no, e.first_name, e.last_name,
	de.dept_no, de.from_date, de.to_date, d.dept_name
INTO retirement_dept
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON (de.dept_no = d.dept_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

SELECT * FROM retirement_dept

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	dept_name
INTO unique_dept 
FROM retirement_dept as rd
WHERE (rd.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_dept;

-- Use Count to create a table
SELECT count(dept_name) "count", dept_name
INTO retiring_dept
FROM unique_dept
GROUP BY dept_name
ORDER BY count DESC;

SELECT * FROM retiring_dept