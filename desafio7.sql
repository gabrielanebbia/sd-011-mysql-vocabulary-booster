SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
START_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM
hr.employees AS e 
INNER JOIN
hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
MONTH(START_DATE)=1
OR
MONTH(START_DATE)=2
OR
MONTH(START_DATE)=3
ORDER BY `Nome completo`, `Data de início`;
