SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome Completo', 
j.JOB_TITLE 'Cargo', 
jh.START_DATE 'Data de início do cargo', 
d.DEPARTMENT_NAME 'Departamento'
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.jobs j
ON jh.JOB_ID = j.JOB_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE;
