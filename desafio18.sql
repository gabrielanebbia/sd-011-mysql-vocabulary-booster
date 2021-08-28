SELECT
concat(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
DATE_FORMAT(jobHistory.start_date, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(jobHistory.end_date, '%d/%m/%Y') AS `Data de rescisão`,
CAST(DATEDIFF(jobHistory.end_date, jobHistory.start_date) / 365 AS DECIMAL(10, 2)) AS `Anos trabalhados`
FROM job_history AS jobHistory
INNER JOIN employees AS employees
ON jobHistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY
concat(employees.first_name, ' ', employees.last_name),
DATEDIFF(jobHistory.end_date, jobHistory.start_date) / 365;
