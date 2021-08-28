SELECT
CONCAT(t2.first_name, ' ', t2.last_name) AS 'Nome completo',
t3.job_title AS 'Cargo',
t1.start_date AS 'Data de início do cargo',
t4.department_name AS 'Departamento'
FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2 ON t1.employee_id = t2.employee_id
INNER JOIN hr.jobs AS t3 ON t1.job_id = t3.job_id
INNER JOIN hr.departments AS t4 ON t1.department_id = t4.department_id
ORDER BY CONCAT(t2.first_name, ' ', t2.last_name) DESC, t3.job_title ASC;
