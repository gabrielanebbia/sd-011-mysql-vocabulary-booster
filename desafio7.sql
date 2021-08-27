SELECT UCASE(CONCAT(E.first_name, ' ', E.last_name)) AS 'Nome completo',
JH.start_date AS 'Data de início',
E.salary AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH ON JH.employee_id = E.employee_id
WHERE MONTH(JH.start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
