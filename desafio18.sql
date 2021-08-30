SELECT 
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
START_DATE AS 'Data de início',
END_DATE AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE, START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.employee_id = e.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
