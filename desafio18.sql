SELECT
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS "Nome completo",
-- https://www.w3schools.com/sql/trymysql.asp?filename=trysql_func_mysql_date_format
CONCAT(
DATE_FORMAT(START_DATE, "%d"), '/',
DATE_FORMAT(START_DATE, "%m"), '/',
DATE_FORMAT(START_DATE, "%Y")
) AS "Data de início",
CONCAT(
DATE_FORMAT(END_DATE, "%d"), '/',
DATE_FORMAT(END_DATE, "%m"), '/',
DATE_FORMAT(END_DATE, "%Y")
       ) AS "Data de rescisão",
ROUND((DATEDIFF(END_DATE, START_DATE) / 365), 2) AS "Anos trabalhados"
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
