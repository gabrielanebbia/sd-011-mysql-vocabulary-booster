SELECT UCASE(CONCAT(t2.first_name, ' ', t2.last_name)) AS 'Nome completo',
t1.start_date AS 'Data de início do cargo',
t2.salary AS 'Salário'
FROM job_history AS t1
INNER JOIN employees AS t2
ON t1.employee_id = t2.employee_id
WHERE t1.start_date LIKE '%-01-%' OR t1.start_date LIKE '%-02-%' OR t1.start_date LIKE '%-03-%'
ORDER BY CONCAT(t2.first_name, ' ', t2.last_name) ASC, t1.start_date ASC;
