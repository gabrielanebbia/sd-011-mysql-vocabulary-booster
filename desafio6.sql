SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo',
his.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS Departamento
FROM hr.employees emp
INNER JOIN hr.job_history his
ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs job
ON job.JOB_ID = his.JOB_ID
INNER JOIN hr.departments dep
ON dep.DEPARTMENT_ID = his.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, job.JOB_TITLE ASC;
