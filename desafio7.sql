SELECT ucase(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de iníco',
emp.SALARY AS 'Salário' FROM  hr.job_history AS jh
INNER JOIN hr.employees AS emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 01 AND 03
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME), jh.START_DATE;
