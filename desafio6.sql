SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
j.job_title AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM
employees AS e
INNER JOIN
job_history AS jh
ON e.job_id = jh.job_id
INNER JOIN
jobs AS j
ON jh.job_id = j.job_id
INNER JOIN
departments AS d
ON jh.department_id = d.department_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.job_title ASC;
