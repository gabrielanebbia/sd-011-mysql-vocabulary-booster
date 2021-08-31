-- SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
-- j.JOB_TITLE AS Cargo,
-- e.HIRE_DATE AS 'Data de início do cargo',
-- d.DEPARTMENT_NAME AS 'Departamento'
-- FROM employees AS e
-- INNER JOIN jobs AS j
-- ON e.JOB_ID = j.JOB_ID
-- INNER JOIN departments AS d
-- ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
-- ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE;
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
jh.START_DATE,
d.DEPARTMENT_NAME AS 'Departamento'
FROM job_history AS jh
INNER JOIN employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN jobs AS j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE;