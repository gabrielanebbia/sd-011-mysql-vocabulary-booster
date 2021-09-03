/* SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) `Nome completo`,	
(SELECT JOB_TITLE FROM hr.jobs WHERE hr.jobs.JOB_ID = e.JOB_ID) as `Cargo`,
(SELECT START_DATE FROM hr.job_history as jj WHERE hr.jj.JOB_ID = e.JOB_ID limit 1) as `Data de início do cargo`,
(SELECT DEPARTMENT_NAME FROM hr.departments WHERE hr.departments.DEPARTMENT_ID = e.DEPARTMENT_ID) as `Departamento`
FROM hr.employees as e
ORDER BY `Nome completo` DESC, Cargo; */

SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON j.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments AS d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
