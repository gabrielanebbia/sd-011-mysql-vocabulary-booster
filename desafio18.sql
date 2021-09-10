SELECT CONCAT(n.FIRST_NAME, ' ', n.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(d.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(d.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(d.END_DATE, d.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees n
INNER JOIN hr.job_history d
ON n.EMPLOYEE_ID = d.EMPLOYEE_ID
ORDER BY 1 ASC, 4 ASC;
