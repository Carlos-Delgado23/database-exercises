USE employees;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT * FROM employees
WHERE birth_date LIKE '%12-25%'
AND hire_date > '1990' AND hire_date < '2000'
ORDER BY birth_date ASC ,hire_date DESC
LIMIT 5 OFFSET 45;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;