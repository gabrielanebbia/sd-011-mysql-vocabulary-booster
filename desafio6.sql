SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo', 
j.job_title AS 'Cargo', 
d.start_date AS 'Data de início do cargo', 
de.department_name AS 'Departamento'
FROM hr.employees e 
INNER JOIN hr.jobs j
ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.job_history d
ON d.employee_id = e.employee_id
INNER JOIN hr.departments de
ON de.department_id = e.department_id
