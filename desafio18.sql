SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
CONCAT(if (length(day(jh.START_DATE)) = 1, CONCAT('0',day(jh.START_DATE)), day(jh.START_DATE)),
'/',if (length(month(jh.START_DATE)) = 1, CONCAT('0',month(jh.START_DATE)), month(jh.START_DATE)),
'/',year(jh.START_DATE)
) AS 'Data de início',
CONCAT(if (length(day(jh.END_DATE)) = 1, CONCAT('0',day(jh.END_DATE)), day(jh.END_DATE)),
'/',if (length(month(jh.END_DATE)) = 1, CONCAT('0',month(jh.END_DATE)), month(jh.END_DATE)),
'/',year(jh.END_DATE)
) as 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM employees e
INNER JOIN job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE)/30)/12, 2);
