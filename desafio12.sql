SELECT
CONCAT(firs.FIRST_NAME, ' ', firs.LAST_NAME) AS `Nome completo funcionário 1`,
firs.SALARY AS `Salário funcionário 1`,
firs.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(secon.FIRST_NAME, ' ', secon.LAST_NAME) AS `Nome completo funcionário 2`,
secon.SALARY AS `Salário funcionário 2`,
secon.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS firs
INNER JOIN
hr.employees AS secon ON secon.JOB_ID = firs.JOB_ID
WHERE firs.EMPLOYEE_ID <> secon.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
