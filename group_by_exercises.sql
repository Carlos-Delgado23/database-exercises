USE employees;

SELECT DISTINCT title FROM titles;

SELECT first_name, last_name, COUNT(*) FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;

SELECT last_name, COUNT(*) FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

SELECT count(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY count(*) DESC;