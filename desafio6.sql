SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
jb.JOB_TITLE AS Cargo,
jbhist.START_DATE AS `Data de início do cargo`,
dep.DEPARTMENT_NAME AS Departamento 
FROM hr.employees as emp
INNER JOIN hr.job_history AS jbhist
ON jbhist.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS jb
ON jb.JOB_ID = jbhist.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = jbhist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
