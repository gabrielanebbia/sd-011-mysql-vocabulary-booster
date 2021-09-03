SELECT CONCAT(emps.FIRST_NAME,' ', emps.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo',
jobhis.START_DATE AS 'Data de início do cargo',
dept.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emps
INNER JOIN hr.job_history AS jobhis
ON emps.EMPLOYEE_ID = jobhis.EMPLOYEE_ID
INNER JOIN hr.departments AS dept
ON jobhis.DEPARTMENT_ID = dept.DEPARTMENT_ID
INNER JOIN hr.jobs AS job
ON jobhis.JOB_ID = job.JOB_ID
ORDER BY CONCAT(emps.FIRST_NAME,' ', emps.LAST_NAME) DESC, Cargo ASC;


-- Artigo de apoio: https://www.w3schools.com/mysql/func_mysql_case.asp
