SELECT
  CONCAT(tb1.FIRST_NAME, ' ', tb1.LAST_NAME) AS `Nome completo funcionário 1`,
  tb1.SALARY AS `Salário funcionário 1`,
  tb1.PHONE_NUMBER AS `Telefone funcionário 1`,
  CONCAT(tb2.FIRST_NAME, ' ', tb2.LAST_NAME) AS `Nome completo funcionário 2`,
  tb2.SALARY AS `Salário funcionário 2`,
  tb2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS tb1, hr.employees AS tb2
WHERE
  tb1.JOB_ID = tb2.JOB_ID
AND
  CONCAT(tb1.FIRST_NAME, ' ', tb1.LAST_NAME) <> CONCAT(tb2.FIRST_NAME, ' ', tb2.LAST_NAME)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
