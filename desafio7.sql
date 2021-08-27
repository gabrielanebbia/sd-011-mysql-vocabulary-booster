SELECT 
UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
jh.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM
employees AS e
INNER JOIN
job_history AS jh ON e.employee_id = jh.employee_id
HAVING MONTH(jh.start_date) >= 3
ORDER BY `Nome completo`, jh.start_date;
