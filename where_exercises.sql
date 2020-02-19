USE employees;

SELECT * FROM employees
WHERE gender = 'M'
  AND (
      first_name IN ('Irena', 'Vidya')
   OR first_name = 'Maya'
);

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

SELECT * FROM employees
WHERE hire_date > '1990' and hire_date < '2000'
  AND birth_date LIKE '%12-25%';

SELECT * FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';

