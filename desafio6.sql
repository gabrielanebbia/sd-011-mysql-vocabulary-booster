SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS 'Nome completo', 
jobs.JOB_TITLE AS 'Cargo',
jobsH.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jobs
ON emp.JOB_ID = jobs.JOB_ID
INNER JOIN hr.job_history AS jobsH
ON emp.EMPLOYEE_ID = jobsH.EMPLOYEE_ID
INNER JOIN 	hr.departments AS dep
ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
