SELECT CONCAT(a.first_name, ' ', a.last_name) AS `Nome completo`, 
b.JOB_TITLE AS Cargo, 
c.START_DATE AS `Data de início do cargo`, 
d.DEPARTMENT_NAME AS Departamento
FROM employees AS a
INNER JOIN jobs AS b
ON a.JOB_ID = b.JOB_ID
INNER JOIN job_history AS c
ON b.JOB_ID = c.JOB_ID
INNER JOIN departments AS d
ON c.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(a.first_name, ' ', a.last_name), Cargo;
