SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo funcionário 1`,
  E.SALARY AS `Salário funcionário 1`,
  E.PHONE_NUMBER AS `Telefone funcionário 1`,
  CONCAT(EE.FIRST_NAME, ' ', EE.LAST_NAME) AS `Nome completo funcionário 2`,
  EE.SALARY AS `Salário funcionário 2`,
  EE.PHONE_NUMBER AS `Telefone funcionário 2`
FROM employees AS E, employees AS EE
WHERE E.JOB_ID = EE.JOB_ID
AND CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) != CONCAT(EE.FIRST_NAME, ' ', EE.LAST_NAME)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
