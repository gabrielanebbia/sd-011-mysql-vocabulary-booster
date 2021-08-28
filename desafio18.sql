SELECT
CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME)AS 'Nome completo',
CONCAT(DAY(j_h.START_DATE), '/', MONTH(j_h.START_DATE), '/', YEAR(j_h.START_DATE)) AS 'Data de início',
CONCAT(DAY(j_h.END_DATE), '/', MONTH(j_h.END_DATE), '/', YEAR(j_h.END_DATE)) AS 'Data de rescisão',
ROUND((DATEDIFF(j_h.END_DATE, j_h.START_DATE) / 365), 2) AS 'Anos trabalhados'
FROM
hr.employees AS empls
INNER JOIN
hr.job_history AS j_h ON empls.EMPLOYEE_ID = j_h.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
