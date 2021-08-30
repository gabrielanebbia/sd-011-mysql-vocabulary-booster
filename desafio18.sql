SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
CONCAT(DATE_FORMAT(start_date, '%d'), '/', DATE_FORMAT(start_date, '%m'), '/', YEAR(start_date)) AS 'Data de inicio',
CONCAT(DATE_FORMAT(end_date, '%d'), '/', DATE_FORMAT(end_date, '%m'), '/', YEAR(end_date)) AS 'Data de rescisão',
ROUND(DATEDIFF(end_date, start_date)/365, 2) AS 'Anos trabalhados'
FROM hr.employees e
INNER JOIN hr.job_history j
ON e.employee_id = j.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
