SELECT * FROM hr.job_history;

SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo', -- a
j.JOB_TITLE AS 'Cargo', -- b
jh.START_DATE AS 'Data de início do cargo', -- c
d.DEPARTMENT_NAME AS 'Departamento' -- d
FROM hr.employees emp 
INNER JOIN hr.departments d
ON d.DEPARTMENT_ID = emp.DEPARTMENT_ID
INNER JOIN hr.job_history jh
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs j
ON jh.JOB_ID = j.JOB_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC,
j.JOB_TITLE;
