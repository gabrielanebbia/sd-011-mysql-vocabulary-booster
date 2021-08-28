SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) 'Nome completo', 
jh.START_DATE 'Data de início',
e.SALARY 'Salário'
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), jh.START_DATE; 
