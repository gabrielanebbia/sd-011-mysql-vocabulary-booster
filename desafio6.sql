SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) `Nome completo`,	
(SELECT JOB_TITLE FROM hr.jobs WHERE hr.jobs.JOB_ID = hr.employees.JOB_ID) as `Cargo`,
HIRE_DATE `Data de início do cargo`,
(SELECT DEPARTMENT_NAME FROM hr.departments WHERE hr.departments.DEPARTMENT_ID = hr.employees.DEPARTMENT_ID) as `Departamento`
FROM hr.employees
ORDER BY `Nome completo` DESC, Cargo;
