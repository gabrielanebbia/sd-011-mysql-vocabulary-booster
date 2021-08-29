SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
CONCAT(DATE_FORMAT(jh.START_DATE, '%d'), '/', DATE_FORMAT(jh.START_DATE, '%m'), '/', YEAR(jh.START_DATE)) AS 'Data de início',
CONCAT(DATE_FORMAT(jh.END_DATE, '%d'), '/', DATE_FORMAT(jh.END_DATE, '%m'), '/', YEAR(jh.END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
