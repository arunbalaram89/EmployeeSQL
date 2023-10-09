-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salary
FROM "Employees"
INNER JOIN "Salaries"
ON "Employees".emp_no="Salaries".emp_no;






-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT "Employees".first_name, "Employees".last_name
FROM "Employees"
WHERE "Employees".hire_date is'1986'



-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT "Departments".dept_no, "Departments".dept_name, "Department_Managers".emp_no, "Employees".last_name, "Employees".first_name
FROM "Departments"
JOIN "Department_Managers"
ON "Department".dept_no="Department_Managers".dept_no
JOIN "Employees"
ON "Department_Managers".emp_no="Employees".emp_no;




-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, em.emp_no, em.last_name, em.first_name, dep.dept_name 
FROM "Department_Employees" as de
INNER JOIN "Employees" as em
ON de.emp_no=em.emp_no
INNER JOIN "Departments" as dep
ON dep.dept_no=de.dept_no;



-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT em.first_name, em.last_name, em.sex
FROM "Employees" as em 
WHERE em.first_name is 'Hercule'
AND em.last_name START WITH B;



-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dep.dept_name, em.emp_no, em.last_name, em.first_name
FROM "Department_Employees" as de
JOIN "Employees" as em
ON de.emp_no=em.emp_no
JOIN "Departments" as dep
ON dep.dept_no=de.dept_no
WHERE dep.dept_name = 'd007';


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT em.emp_no, em.last_name, em.first_name, dep.dept_name
FROM "Departments" as dep
WHERE dep.dept_name = 'Sales' and 'Development'
LEFT JOIN "Department_Employees" as de
ON dep.dept_no=de.dept_no
RIGHT JOIN "Employees" as em
ON de.emp_no=em.emp_no;



-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).




