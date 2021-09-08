SELECT CONCAT_WS(' ', E.first_name, E.last_name) AS `Nome completo`,
DATE_FORMAT(JH.start_date, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(JH.end_date, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(JH.end_date, JH.start_date) / 365, 2) AS `Anos trabalhados`
FROM job_history AS JH
INNER JOIN employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
