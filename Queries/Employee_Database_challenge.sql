-- DELIVERABLE 1 (Retirees; born between 1952-1955): Retrieve data from employee table
SELECT emp_no, first_name, last_name
FROM employees

-- Retrieve data from titles table
SELECT title, from_date, to_date
FROM titles

-- Create new table using into clause; 
-- join on primary key; filter on birth_date and sort by emp_no
SELECT e.emp_no, 
	   e.first_name, 
	   e.last_name, 
	   t.title, 
	   t.from_date, 
	   t.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t
		ON e.emp_no = t.emp_no
	WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	ORDER BY emp_no ASC;

DROP TABLE retirement_titles
Select * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles	
FROM retirement_titles as rt
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

DROP TABLE unique_titles
SELECT * FROM unique_titles

--Retrieve number of employees by most recent title and about to retire
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;

DROP TABLE retiring_titles
SELECT * FROM retiring_titles

-- DELIVERABLE 2 (Mentorship; born in 1965)
SELECT DISTINCT ON (emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN titles as t
		ON e.emp_no = t.emp_no
	WHERE (de.to_date = '9999-01-01') AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
	ORDER BY emp_no, t.from_date DESC;
	
SELECT * FROM mentorship_eligibility