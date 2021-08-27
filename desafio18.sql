SELECT
  CONCAT( E.FIRST_NAME, ' ', E.LAST_NAME ) AS `Nome completo`,
  CONCAT(DATE_FORMAT(JH.START_DATE, '%d'), '/', DATE_FORMAT(JH.START_DATE, '%m'), '/', DATE_FORMAT(JH.START_DATE, '%Y')) AS `Data de início`,
  CONCAT ( DATE_FORMAT(JH.END_DATE, '%d'), '/', DATE_FORMAT(JH.END_DATE, '%m'), '/', DATE_FORMAT(JH.END_DATE, '%Y')) AS `Data de rescisão`,
  ROUND(( DATEDIFF(JH.END_DATE, JH.START_DATE) / 365 ), 2) AS `Anos trabalhados`
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
  ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
