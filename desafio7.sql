SELECT UCASE(CONCAT(first_name,' ', last_name)) AS 'Nome Completo', DATE(start_date) AS 'Data de início',
salary AS Salário
FROM hr.job_history AS JB
INNER JOIN
hr.employees AS E ON JB.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome Completo`, `Data de início`;