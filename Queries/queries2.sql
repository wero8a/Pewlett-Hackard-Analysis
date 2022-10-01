-- Joining departments and dept_manager tables
SELECT d.dept_name,
	
	dm.emp_no,

	dm.from_date,
	
	dm.to_date
	
FROM departments AS d

INNER JOIN dept_manager AS dm 

ON d.dept_no = dm.dept_no;

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,

	retirement_info.first_name,
	
	retirement_info.last_name,

	dept_emp.to_date
	
FROM retirement_info

LEFT JOIN dept_emp 

ON retirement_info.emp_no = dept_emp.emp_no;

-- using aliases
SELECT ri.emp_no,
	
	ri.first_name,
	
	ri.last_name,

	de.to_date
	
FROM retirement_info as ri

LEFT JOIN dept_emp as de 

ON ri.emp_no = de.emp_no;


SELECT ri.emp_no,

	ri.first_name,
	
	ri.last_name,
	
	de.to_date
	
INTO current_emp

FROM retirement_info as ri

LEFT JOIN dept_emp AS de

ON ri.emp_no = de.emp_no

WHERE de.to_date = ('9999-01-01');

SELECT * FROM current_emp;

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no

INTO dept_emp_count

FROM current_emp as ce

LEFT JOIN dept_emp as de

ON ce.emp_no = de.emp_no

GROUP BY de.dept_no

ORDER BY de.dept_no;

SELECT * FROM salaries

ORDER BY to_date DESC;


-- GET EMPLOYEE INFO
SELECT emp_no,

	first_name,
	
	last_name,
	
	gender
	
INTO emp_info

FROM employees

WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')

AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT e.emp_no,

	e.first_name,
	
	e.last_name,
	
	e.gender,
	
	s.salary,
	
	de.to_date

INTO emp_info

FROM employees as e

INNER JOIN salaries as s

ON e.emp_no = s.emp_no

INNER JOIN dept_emp as de

ON e.emp_no = de.emp_no

WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

	AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')	
	
	AND (de.to_date = '9999-01-01');
	
DROP TABLE emp_info;

SELECT * FROM emp_info;

-- List of managers per department
SELECT dm.dept_no,

	d.dept_name,

	dm.emp_no,
	
	ce.last_name,
	
	ce.first_name,
	
	dm.from_date,
	
	dm.to_date
	
INTO manager_info

FROM dept_manager as dm

INNER JOIN departments as d

ON dm.dept_no = d.dept_no

INNER JOIN current_emp AS ce

ON dm.emp_no = ce.emp_no;

DROP TABLE manager_info;