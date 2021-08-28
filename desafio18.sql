SELECT
  CONCAT(employess.FIRST_NAME, ' ', employess.LAST_NAME) AS `Nome completo`,
  CONCAT(DAY(job_history.START_DATE), '/', MONTH(job_history.START_DATE), '/', YEAR(job_history.START_DATE)) AS `Data de início`,
  CONCAT(DAY(job_history.END_DATE), '/', MONTH(job_history.END_DATE), '/', YEAR(job_history.END_DATE)) AS `Data de rescisão`,
  ROUND(DATEDIFF(job_history.START_DATE, job_history.END_DATE) / 365, 2) AS `Anos trabalhados`
FROM job_history AS job_history
  INNER JOIN employees AS employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
