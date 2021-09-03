SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE as `Data de início`,
e.SALARY as `Salário`
FROM hr.employees as e
INNER JOIN hr.job_history as jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`, `Salário`;
