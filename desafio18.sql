SELECT 
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
CONCAT(DATE_FORMAT(START_DATE, '%d'), '-', DATE_FORMAT(START_DATE, '%m'), '-', YEAR(START_DATE)) AS 'Data de início',
CONCAT(DATE_FORMAT(END_DATE, '%d'), '-', DATE_FORMAT(END_DATE, '%m'), '-', YEAR(END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE, START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.employee_id = e.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
