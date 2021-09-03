SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS Cargo, jh.START_DATE AS 'Data de início do cargo', dep.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS dep ON jh.DEPARTMENT_ID = dep.DEPARTMENT_ID
INNER JOIN hr.jobs AS job ON jh.JOB_ID = job.JOB_ID
ORDER BY 'Nome Completo' DESC , Cargo;
