--Joining emp_info and salary

SELECT * FROM salaries
ORDER BY to_date DESC;

SELECT emp_no, first_name, last_name,gender
INTO emp_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Joining employees and salaries
SELECT e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.gender, 
	s.salary, 
	de.to_date