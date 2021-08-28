SELECT
UCASE(CONCAT(FIRST_NAME,' ', LAST_NAME)) AS 'Nome completo',
START_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM 
hr.employees AS e
INNER JOIN
hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE 
MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
