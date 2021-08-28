SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(j.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(j.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(j.END_DATE, j.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), ROUND(DATEDIFF(j.END_DATE, j.START_DATE)/365, 2)
