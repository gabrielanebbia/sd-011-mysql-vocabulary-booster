SELECT CONCAT(EMPLOYEES.FIRST_NAME,	' ', EMPLOYEES.LAST_NAME) AS 'Nome Completo',
JOBS.JOB_TITLE AS 'Cargo',
JOB_HIST.START_DATE AS 'Data de início do cargo',
DEPT.DEPARTMENT_NAME AS 'Departamento'
from hr.employees as EMPLOYEES
INNER JOIN hr.job_history as JOB_HIST
on JOB_HIST.employee_id = EMPLOYEES.employee_id
INNER JOIN	hr.jobs as JOBS
on JOB_HIST.job_id = JOBS.job_id
INNER JOIN	hr.departments as DEPT
on JOB_HIST.department_id = DEPT.department_id
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
