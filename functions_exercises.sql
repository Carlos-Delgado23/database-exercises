USE employees;

SELECT CONCAT(first_name, ' ' ,last_name) AS Result FROM employees.employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY emp_no DESC;


SELECT CONCAT(first_name, ' ', last_name, ' has worked ',
       DATEDIFF(curdate(), hire_date), ' days here.') AS Results
       FROM employees
       WHERE hire_date > '1990' and hire_date < '2000'
         AND birth_date LIKE '%12-25%'
       ORDER BY birth_date ASC ,hire_date DESC;

