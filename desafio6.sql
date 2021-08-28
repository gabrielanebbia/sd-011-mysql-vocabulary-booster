-- SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
-- job.JOB_TITLE AS 'Cargo',
-- hist.START_DATE AS 'Data de início do cargo',
-- dep.DEPARTMENT_NAME AS 'Departamento'
-- FROM hr.employees AS emp
-- INNER JOIN job_history AS hist ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
-- INNER JOIN jobs AS job ON job.JOB_ID = hist.JOB_ID
-- INNER JOIN departments AS dep ON dep.DEPARTMENT_ID = emp.DEPARTMENT_ID
-- ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, JOB_TITLE;

SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
job.START_DATE AS 'Data de início de cargo',
dep.DEPARTMENT_NAME AS 'Department'
FROM hr.employees AS employee
INNER JOIN hr.job_history AS job ON employee.EMPLOYEE_ID = job.EMPLOYEE_ID
INNER JOIN hr.departments AS dep ON dep.DEPARTMENT_ID = job.DEPARTMENT_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = job.JOB_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, JOB_TITLE;
