SELECT UCASE( CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) ) AS 'Nome completo', t2.START_DATE AS 'Data de início', t1.SALARY AS 'Salário'
FROM hr.employees AS t1
INNER JOIN hr.job_history as t2
ON t2.EMPLOYEE_ID = t1.EMPLOYEE_ID AND MONTH(t2.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
