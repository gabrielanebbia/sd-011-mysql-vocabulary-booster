SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
j.job_title AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM
employees AS e
INNER JOIN
jobs AS j
ON j.job_id = e.job_id
INNER JOIN
job_history AS jh
ON jh.job_id = e.job_id
INNER JOIN
departments AS d
ON e.department_id = d.department_id
ORDER BY `Nome completo` DESC , `Cargo` ASC;
