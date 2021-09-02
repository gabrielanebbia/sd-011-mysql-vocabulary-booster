SELECT
CONCAT(e.first_name, ' ',  e.last_name) AS "Nome completo",
j.job_title AS Cargo,
jh.start_date AS "Data de início do cargo",
dep.department_name AS Departamento
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON j.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
