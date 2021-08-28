SELECT
  UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
  job_history.START_DATE AS `Data de início`,
  E.SALARY AS `Salário`
FROM employees AS E
INNER JOIN job_history AS job_history
  ON job_history.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
