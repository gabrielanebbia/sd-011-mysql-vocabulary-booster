SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
CONCAT(DAY(JH.START_DATE), '/', SUBSTRING(JH.START_DATE, 6, 2), '/', YEAR(JH.START_DATE)) AS `Data de início`,
CONCAT(DAY(JH.END_DATE), '/', SUBSTRING(JH.END_DATE, 6, 2), '/', YEAR(JH.END_DATE)) AS `Data de rescisão`,
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
