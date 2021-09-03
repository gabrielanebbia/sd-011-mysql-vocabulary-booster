SELECT CONCAT(e.first_name,' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(end_date, start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.JOB_ID = jh.JOB_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
