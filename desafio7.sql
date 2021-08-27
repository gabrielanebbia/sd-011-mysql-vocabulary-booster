-- SELECT * FROM countries;
SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
jh.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM
employees AS e
INNER JOIN
job_history AS jh ON e.employee_id = jh.employee_id
GROUP BY jh.start_date
HAVING MONTH(jh.start_date) > 3
ORDER BY CONCAT(e.first_name, ' ', e.last_name) , jh.start_date;
