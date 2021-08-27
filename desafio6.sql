SELECT 
CONCAT (FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
jhistory.START_DATE AS 'Data de início do cargo',
department.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jhistory
ON employees.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jhistory.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments AS department
ON jhistory.DEPARTMENT_ID = department.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
