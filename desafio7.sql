SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
h.START_DATE AS `Data de início`,
ROUND(SALARY, 2) AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE h.START_DATE REGEXP '-0[1-3]-'
ORDER BY `Nome completo`, h.START_DATE;
