SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
FORMAT (DATE(jh.START_DATE), 'dd/MM/yyyy ') AS `Data de início`,
FORMAT (DATE(jh.END_DATE), 'dd/MM/yyyy ') AS `Data de rescisão`,
ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE)/365), 2) AS `Anos trabalhados`
from hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`,
`Anos trabalhados`;
