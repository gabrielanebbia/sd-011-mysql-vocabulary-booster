SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
DATE_FORMAT((jh.start_date), '%d/%m/%y') AS 'Data de início',
DATE_FORMAT((jh.end_date), '%d/%m/%y') AS 'Data de recisão',
-- CONCAT(FLOOR(DATEDIFF(jh.end_date, jh.start_date)/365), ' ano(s) e ', FLOOR(12*((DATEDIFF(jh.end_date, jh.start_date)/365)-FLOOR(DATEDIFF(jh.end_date, jh.start_date)/365))), ' mes(es)') AS 'Anos de trabalho'
ROUND(DATEDIFF(jh.end_date, jh.start_date)/365, 2) AS 'Anos trabalhados'
FROM job_history AS jh
INNER JOIN employees AS e
ON jh.employee_id = e.employee_id
ORDER BY `Nome completo`, DATEDIFF(jh.end_date, jh.start_date)/365;
