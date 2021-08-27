SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
DATE(START_DATE) AS `Data de início`,
SALARY AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (01, 02)
ORDER BY `Nome completo`, `Data de início`;
