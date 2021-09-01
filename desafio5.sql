SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
job_title AS Cargo, DATE(start_date) AS 'Data de início do cargo', department_name AS Departamento
FROM hr.jobs AS J
INNER JOIN 
hr.employees AS E ON J.job_id = E.job_id
INNER JOIN
hr.departments AS D ON D.department_id = E.department_id
INNER JOIN 
hr.job_history AS JH ON JH.department_id = D.department_id
ORDER BY `Nome completo` DESC, Cargo;
