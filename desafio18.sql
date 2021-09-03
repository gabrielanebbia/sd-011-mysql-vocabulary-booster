SELECT CONCAT(e.first_name,' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jh.end_date, jh.start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.employee_ID = jh.employee_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
