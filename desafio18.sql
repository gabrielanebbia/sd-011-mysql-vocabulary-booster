SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
CONCAT(DAY(h.START_DATE), '/', DATE_FORMAT(h.START_DATE, '%m'), '/', YEAR(h.START_DATE)) AS 'Data de início',
CONCAT(DAY(h.END_DATE), '/', DATE_FORMAT(h.END_DATE, '%m'), '/', YEAR(h.END_DATE)) AS 'Data de rescisão',
ROUND((DATEDIFF(h.END_DATE, h.START_DATE) / 365), 2) AS 'Anos trabalhados'
FROM job_history AS h
INNER JOIN employees AS e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
