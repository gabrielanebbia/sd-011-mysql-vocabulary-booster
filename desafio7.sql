
SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo', 
J.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS J
ON J.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(J.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME), J.START_DATE;
