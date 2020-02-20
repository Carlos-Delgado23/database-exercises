USE employees;

SELECT * FROM employees
WHERE gender = 'M'
  AND (
            first_name IN ('Irena', 'Vidya')
        OR first_name = 'Maya'
    )
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
  ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE hire_date > '1990' and hire_date < '2000'
  AND birth_date LIKE '%12-25%'
  ORDER BY birth_date ASC ,hire_date DESC;

SELECT * FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';

