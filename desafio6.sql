SELECT
CONCAT(e.first_name, ' ',  e.last_name) AS "Nome completo",
j.job_title AS Cargo,
jh.start_date AS "Data de início do cargo",
dep.department_name AS Departamento
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON e.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY 'Nome completo' ASC, Cargo ASC;
