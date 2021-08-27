SELECT
CONCAT(first_name, ' ', last_name) AS 'Nome completo',
job_title AS 'Cargo',
h.start_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM hr.job_history AS h
INNER JOIN hr.employees e
ON h.employee_id = e.employee_id
INNER JOIN hr.jobs j
ON j.job_id = h.job_id
INNER JOIN hr.departments d
ON h.department_id = d.department_id
ORDER BY `Nome completo` DESC, j.job_title;
