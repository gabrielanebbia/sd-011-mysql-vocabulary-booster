SELECT
  CONCAT(UCASE(e.FIRST_NAME), ' ', UCASE(e.LAST_NAME)) AS 'Nome completo',
  DATE(jh.START_DATE) AS 'Data de início',
  e.SALARY AS 'Salário'
FROM
  hr.job_history AS jh
  INNER JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
  MONTH(jh.START_DATE) IN ('01', '02', '03')
ORDER BY
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME),
  DATE(jh.START_DATE);
