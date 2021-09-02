SELECT
concat(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
date_format(jh.START_DATE, "%d/%m/%Y") AS 'Data de início',
date_format(jh.END_DATE, "%d/%m/%Y") AS 'Data de rescisão',
round(datediff(jh.END_DATE, jh.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY 1, 4;
