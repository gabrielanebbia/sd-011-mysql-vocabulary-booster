SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
convert(varchar, jh.START_DATE, 103) AS `Data de início`,
convert(varchar, jh.END_DATE, 103) AS `Data de rescisão`,
ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE)/365), 2) AS `Anos trabalhados`
from hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`,
`Anos trabalhados`;
