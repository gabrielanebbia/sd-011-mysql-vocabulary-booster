SELECT
UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
b.START_DATE AS 'Data de início',
a.SALARY AS 'Salário'
FROM hr.employees AS a
INNER JOIN hr.job_history AS b
ON a.EMPLOYEE_ID=b.EMPLOYEE_ID
WHERE MONTH(b.START_DATE) = 01
OR MONTH(b.START_DATE) = 02
OR MONTH(b.START_DATE) = 03
ORDER BY `Nome completo`, `Data de início`;
