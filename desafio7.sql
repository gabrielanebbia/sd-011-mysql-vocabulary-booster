SELECT
UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
j.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE MONTH(j.start_date) BETWEEN (1) AND (3)
ORDER BY `Nome completo`, `Data de início`;
