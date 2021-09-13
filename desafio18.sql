SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
  DATE_FORMAT(H.START_DATE, '%d/%m/%Y') 'Data de início',
  DATE_FORMAT(H.END_DATE, '%d/%m/%Y') 'Data de rescisão',
  ROUND(DATEDIFF(H.END_DATE, H.START_DATE) / 365, 2) 'Anos trabalhados'
FROM
  hr.employees E
    INNER JOIN
  hr.job_history H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos Trabalhados`;
