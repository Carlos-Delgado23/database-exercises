USE employees;

SELECT first_name, last_name, hire_date
      FROM employees
      WHERE hire_date IN (
          SELECT hire_date
          FROM employees
          WHERE emp_no = '101010'
      );

SELECT t.title as Title, CONCAT(e.first_name,' ', e.last_name) as Employee
FROM employees as e
join titles t on e.emp_no = t.emp_no
where e.first_name = 'Aamod';

SELECT e.first_name, e.last_name
FROM employees as e
JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'f';

SELECT distinct d.dept_name
FROM departments as d
JOIN dept_emp de on d.dept_no = de.dept_no
join employees e on de.emp_no = e.emp_no
WHERE e.emp_no IN(
    SELECT e.emp_no
    FROM employees
    where gender = 'f'
    );
