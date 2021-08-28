SELECT
CONCAT(FIRST_NAME, ' ' ,LAST_NAME) AS `Nome completo funcionário 1`,
SALARY AS `Salário funcionário 1`,
PHONE_NUMBER AS `Telefone funcionário 1`
FROM hr.employees;

SELECT
CONCAT(FIRST_NAME, ' ' ,LAST_NAME) AS `Nome completo funcionário 2`,
SALARY AS `Salário funcionário 2`,
PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees
WHERE JOB_ID = t1.JOB_ID;