SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jb.JOB_TITLE AS 'Cargo',
jbh.START_DATE AS 'Data de início do cargo',
dp.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history jbh
INNER JOIN hr.jobs AS jb
ON jbh.JOB_ID = jb.JOB_ID
INNER JOIN hr.departments AS dp
ON dp.DEPARTMENT_ID = jbh.DEPARTMENT_ID
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = jbh.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, jb.JOB_TITLE ASC;

-- jb = jobs, jbh = job history, dp = departaments, emp = employees;