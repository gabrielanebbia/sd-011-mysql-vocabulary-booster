SELECT concat(first_name, " ", last_name) AS 'Nome Completo', j.job_title AS Cargo
,d.Start_date AS 'Data de início do cargo', de.department_name AS 'Departamento'  
FROM hr.employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.job_id
INNER JOIN hr.job_history AS d
ON e.job_id = d.job_id
INNER JOIN hr.departments AS de
ON d.department_id = de.department_id
ORDER BY concat(first_name, " ", last_name) Desc
, de.department_name ASC;
