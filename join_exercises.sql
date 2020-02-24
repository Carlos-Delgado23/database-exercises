USE employees;

SELECT DISTINCT d.dept_name as 'Department Name', CONCAT (e.first_name, ' ', e.last_name ) AS 'Department_Manager'
FROM employees AS e
JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;

SELECT DISTINCT d.dept_name as 'Department Name', CONCAT (e.first_name, ' ', e.last_name ) AS 'Department_Manager'
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'f'
order by d.dept_name ASC;

SELECT DISTINCT t.title as Title, Count(t.title) as Count
FROM employees AS e
    JOIN titles AS t ON t.emp_no = e.emp_no
    JOIN dept_emp AS de ON e.emp_no = de.emp_no
    JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title ASC;

SELECT DISTINCT d.dept_name AS 'Department Name',
                CONCAT (e.first_name, ' ', e.last_name ) AS 'Department_Manager',
                s.salary AS Salary
FROM employees AS e
JOIN dept_manager AS dm
     ON dm.emp_no = e.emp_no
JOIN departments AS d
     ON dm.dept_no = d.dept_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;

SELECT CONCAT(e.first_name,' ', e.last_name) AS 'Employee Name',
       d.dept_name AS 'Department Name',
       CONCAT(em.first_name, ' ', em.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de on e.emp_no = de.emp_no
JOIN departments AS d on de.dept_no = d.dept_no
JOIN dept_manager AS dm on d.dept_no = dm.dept_no
JOIN employees AS em on dm.emp_no = em.emp_no
WHERE (de.to_date = '9999-01-01' and de.dept_no = d.dept_no) and (dm.to_date = '9999-01-01' and dm.dept_no = d.dept_no);