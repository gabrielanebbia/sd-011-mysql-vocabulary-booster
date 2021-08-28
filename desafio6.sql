SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
job.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employee
INNER JOIN hr.job_history AS job ON employee.EMPLOYEE_ID = job.EMPLOYEE_ID
INNER JOIN hr.departments AS dep ON dep.DEPARTMENT_ID = job.DEPARTMENT_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = job.JOB_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, JOB_TITLE;
