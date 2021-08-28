SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) as `Nome completo`,
FORMAT (jh.START_DATE, 'dd/MM/yyyy ') as `Data de início`,
FORMAT (jh.END_DATE, 'dd/MM/yyyy ') as `Data de rescisão`,
ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE)/365), 2) as `Anos trabalhados`
from hr.employees as e
INNER JOIN hr.job_history as jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`,
`Anos trabalhados`;