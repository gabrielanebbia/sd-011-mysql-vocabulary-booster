SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo', 
date_format(jh.START_DATE, '%d/%m/%Y') AS 'Data de início', 
date_format(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history jh
INNER JOIN hr.employees emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME), ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2);
