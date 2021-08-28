SELECT
CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME)AS 'Nome completo',
DATE_FORMAT(j_h.START_DATE, "%d/%m/%Y") AS 'Data de início',
DATE_FORMAT(j_h.END_DATE, "%d/%m/%Y") AS 'Data de rescisão',
ROUND((DATEDIFF(j_h.END_DATE, j_h.START_DATE) / 365), 2) AS 'Anos trabalhados'
FROM
hr.employees AS empls
INNER JOIN
hr.job_history AS j_h ON empls.EMPLOYEE_ID = j_h.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
