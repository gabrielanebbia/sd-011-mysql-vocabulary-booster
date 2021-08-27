SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM job_history AS h
INNER JOIN employees AS e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN jobs AS j
ON j.JOB_ID = h.JOB_ID
INNER JOIN departments AS d
ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo
