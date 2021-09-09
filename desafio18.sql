SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(j_h.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(j_h.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF((j_h.end_date), (j_h.start_date)) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j_h
ON e.employee_id = j_h.employee_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name), ROUND((YEAR(j_h.end_date) - YEAR(j_h.start_date)), 2);
