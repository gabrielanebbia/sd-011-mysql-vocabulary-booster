SELECT
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jh.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) DESC, jobs.JOB_TITLE ASC;
