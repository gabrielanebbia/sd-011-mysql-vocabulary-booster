SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) `Nome completo`,	
(SELECT JOB_TITLE FROM hr.jobs WHERE hr.jobs.JOB_ID = e.JOB_ID) as `Cargo`,
(SELECT START_DATE FROM hr.job_history as jj WHERE hr.jj.JOB_ID = e.JOB_ID limit 1) as `Data de início do cargo`,
(SELECT DEPARTMENT_NAME FROM hr.departments WHERE hr.departments.DEPARTMENT_ID = e.DEPARTMENT_ID) as `Departamento`
FROM hr.employees as e
ORDER BY `Nome completo` DESC, Cargo;
