SELECT UCASE(CONCAT(e.FIRST_NAME,' ', e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM job_history AS jh
INNER JOIN employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE (MONTH(jh.START_DATE) BETWEEN 1 AND 3)
ORDER BY `Nome completo`, `Data de início`;
