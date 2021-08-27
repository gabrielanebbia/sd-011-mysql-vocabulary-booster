SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
IF(MONTH(jh.start_date) < 10, CONCAT(DAY(jh.start_date), '/0', MONTH(jh.start_date), '/', YEAR(jh.start_date)), CONCAT(DAY(jh.start_date), '/', MONTH(jh.start_date), '/', YEAR(jh.start_date))) AS 'Data de início',
IF(MONTH(jh.end_date) < 10, CONCAT(DAY(jh.end_date), '/0', MONTH(jh.end_date), '/', YEAR(jh.end_date)), CONCAT(DAY(jh.end_date), '/', MONTH(jh.end_date), '/', YEAR(jh.end_date))) AS 'Data de rescisão',
ROUND(DATEDIFF(jh.end_date, jh.start_date)/365, 2) AS 'Anos trabalhados'
FROM hr.employees e
INNER JOIN hr.job_history jh ON e.employee_id = jh.employee_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name), ROUND(DATEDIFF(jh.end_date, jh.start_date)/365, 2);
