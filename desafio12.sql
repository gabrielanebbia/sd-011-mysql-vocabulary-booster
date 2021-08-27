SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo funcionário 1',
E.SALARY AS 'Salário funcionário 1',
E.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(E1.FIRST_NAME, ' ', E1.LAST_NAME) AS 'Nome completo funcionário 2',
E1.SALARY AS 'Salário funcionário 2',
E1.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS E, hr.employees AS E1
WHERE E.JOB_ID = E1.JOB_ID
AND E.EMPLOYEE_ID <> E1.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;