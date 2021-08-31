SELECT CONCAT(e.FIRST_NAME, ' ' , e.LAST_NAME) AS 'Nome Completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN
hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01 , 02, 03)
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), START_DATE;
