SELECT (
  SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
  FROM hr.employees AS e
  WHERE h.EMPLOYEE_ID = e.EMPLOYEE_ID
) AS `Nome completo`,
CONCAT(
DAY(START_DATE), '/',
IF(MONTH(START_DATE) < 10, CONCAT('0', MONTH(START_DATE)), MONTH(START_DATE)), '/',
YEAR(START_DATE)
) AS `Data de início`,
CONCAT(
DAY(END_DATE), '/',
IF(MONTH(END_DATE) < 10, CONCAT('0', MONTH(END_DATE)), MONTH(END_DATE)), '/',
YEAR(END_DATE)
) AS `Data de rescisão`,
ROUND((DATEDIFF(END_DATE, START_DATE) / 365), 2) AS `Anos trabalhados`
FROM hr.job_history AS h
WHERE EMPLOYEE_ID != 'NULL'
ORDER BY `Nome completo`, `Anos trabalhados`;
