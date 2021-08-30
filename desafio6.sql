SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS Cargo,
jhis.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jhis
ON emp.EMPLOYEE_ID = jhis.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON jhis.DEPARTMENT_ID = dep.DEPARTMENT_ID
INNER JOIN hr.jobs AS job
ON jhis.JOB_ID = job.JOB_ID
ORDER BY CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) DESC, Cargo ASC;
