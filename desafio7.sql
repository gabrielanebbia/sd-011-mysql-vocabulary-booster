SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
JH.start_date AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(JH.start_date) IN (1, 2, 3) 
ORDER BY `Nome completo`, `Data de início`;
