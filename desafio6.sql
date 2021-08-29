SELECT 
CONCAT(b.FIRST_NAME, ' ', b.LAST_NAME) AS 'Nome completo',
c.JOB_TITLE AS 'Cargo',
a.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.job_history AS a
INNER JOIN hr.employees AS b
ON b.employee_id = a.employee_id
INNER JOIN hr.jobs AS c
ON a.JOB_ID = c.JOB_ID
INNER JOIN hr.departments AS d
ON a.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
