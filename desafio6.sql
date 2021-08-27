SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo', 
j.JOB_TITLE AS 'Cargo', 
jh.START_DATE AS 'Data de início do cargo', 
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees emp 
INNER JOIN hr.jobs j
ON j.JOB_ID = emp.JOB_ID
INNER JOIN hr.job_history jh
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.departments d
ON d.DEPARTMENT_ID = emp.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC;
