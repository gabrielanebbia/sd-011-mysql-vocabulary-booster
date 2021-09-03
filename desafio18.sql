USE hr;
SELECT 
CONCAT(e.FIRST_NAME, ' ', LAST_NAME) 'Nome completo',
CONCAT(DAY(jh.START_DATE),'/', MONTH(jh.START_DATE), '/', YEAR(jh.START_DATE)) 'Data de início',
CONCAT(DAY(jh.END_DATE),'/', MONTH(jh.END_DATE), '/', YEAR(jh.END_DATE)) 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365.25, 2) 'Anos trabalhados'
FROM employees e INNER JOIN job_history jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;

