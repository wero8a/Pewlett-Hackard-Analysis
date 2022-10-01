SELECT ce.emp_no,
	
	ce.first_name,
	
	ce.last_name,

	d.dept_name

INTO dept_info

FROM current_emp AS ce

INNER JOIN dept_emp AS de

ON (ce.emp_no = de.emp_no)

INNER JOIN departments as d

ON (de.dept_no = d.dept_no);

--Create a query that will return only the information relevant to the Sales team.

SELECT * FROM dept_info

WHERE dept_name IN ('Sales', 'Development');

