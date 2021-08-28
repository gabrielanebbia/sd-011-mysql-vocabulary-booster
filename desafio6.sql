SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS `Nome completo`,
job.JOB_TITLE AS Cargo,
emp.HIRE_DATE AS "Data de início do cargo",
dep.DEPARTMENT_NAME as "Departamento" 
FROM hr.employees AS emp
INNER JOIN hr.jobs AS job
ON emp.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS dep
ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
