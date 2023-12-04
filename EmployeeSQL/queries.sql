--List the employee number, last name, first name, sex, and salary of each employee

SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
INNER JOIN dept_manager
ON  d.dept_no = dept_manager.dept_no
INNER JOIN employees e
ON dept_manager.emp_no = e.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e 
INNER JOIN dept_emp
ON e.emp_no = dept_emp.emp_no 
INNER JOIN departments d
ON d.dept_no = dept_emp.dept_no 

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name 
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e 
WHERE e.emp_no 
IN (
	SELECT emp_no	
	FROM dept_emp
	WHERE dept_no 
	IN
		(SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales')
)
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e 
JOIN  dept_emp
ON e.emp_no = dept_emp.emp_no
JOIN departments d
ON dept_emp.dept_no = d.dept_no
WHERE d.dept_name
IN ('Sales', 'Development')

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "Frequency counts"
FROM employees
GROUP BY last_name
ORDER BY "Frequency counts" desc
