-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo', 
j.job_title AS Cargo,
j_h.start_date AS 'Data de início do cargo',
d.departament_name AS Departamento
FROM hr.job_history AS j_h
INNER JOIN hr.employees AS e
ON j_h.employee_id = e.employee_id
INNER JOIN hr.jobs AS j
ON j_h.job_id = j.job_id
INNER JOIN hr.departments AS d
ON j_h.department_id = d.department_id
ORDER BY `Nome completo` DESC, Cargo;
