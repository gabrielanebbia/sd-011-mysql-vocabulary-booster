SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
CONCAT(DAY(JB.START_DATE), '/', LPAD(MONTH(JB.START_DATE), 2, '0'), '/', YEAR(JB.START_DATE)) AS 'Data de início',
CONCAT(DAY(JB.END_DATE), '/', LPAD(MONTH(JB.END_DATE), 2, '0'), '/', YEAR(JB.END_DATE)) AS 'Data de rescisão',
ROUND((DATEDIFF(JB.END_DATE, START_DATE) / 365), 2) AS 'Anos trabalhados'
FROM hr.employees E
RIGHT JOIN hr.job_history JB
ON JB.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`,
`Anos trabalhados`;
