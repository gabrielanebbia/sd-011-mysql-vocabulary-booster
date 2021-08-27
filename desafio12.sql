SELECT
CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS "Nome completo funcionário 1",
e.SALARY AS "Salário funcionário 1",
e.PHONE_NUMBER AS "Telefone funcionário 1",
CONCAT(e2.FIRST_NAME, " ", e2.LAST_NAME) AS "Nome completo funcionário 2",
e2.SALARY AS "Salário funcionário 2",
e2.PHONE_NUMBER AS "Telefone funcionário 2"
FROM hr.employees e
LEFT JOIN hr.employees e2 ON e2.JOB_ID = e.JOB_ID AND e2.EMPLOYEE_ID <> e.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) ASC, CONCAT(e2.FIRST_NAME, " ", e2.LAST_NAME) ASC;
