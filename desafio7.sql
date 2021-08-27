SELECT UPPER(CONCAT(em.FIRST_NAME, ' ' , em.LAST_NAME)) AS 'Nome completo',
hi.START_DATE AS 'Data de início',
em.SALARY AS 'Salário'
FROM hr.employees em
INNER JOIN hr.job_history hi
ON em.EMPLOYEE_ID = hi.EMPLOYEE_ID
WHERE MONTH(hi.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
