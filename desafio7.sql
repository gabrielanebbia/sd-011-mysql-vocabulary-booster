SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome Completo`,
h.START_DATE AS `Data de início`,
SALARY AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE h.START_DATE REGEXP '-0[1-3]-'
ORDER BY `Nome Completo`, `Data de início`;
