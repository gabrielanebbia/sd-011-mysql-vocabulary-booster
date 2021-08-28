SELECT distinct CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',
jobs.JOB_TITLE AS Cargo,
job.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS emp
RIGHT JOIN hr.job_history AS job 
ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = job.JOB_ID
LEFT JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = job.DEPARTMENT_ID
ORDER BY emp.FIRST_NAME DESC, Cargo ASC;
