SELECT
concat(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS 'Nome completo',
concat(SUBSTRING(start_date, 9, 2), '/', SUBSTRING(start_date, 6, 2),'/', year(start_date)) as 'Data de início',
concat(SUBSTRING(end_date, 9, 2), '/', SUBSTRING(end_date, 6, 2),'/', year(end_date)) as 'Data de rescisão',
ROUND(datediff(end_date, start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
ORDER BY concat(t2.FIRST_NAME, ' ', t2.LAST_NAME), datediff(end_date, start_date);
