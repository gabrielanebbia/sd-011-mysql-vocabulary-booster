SELECT
  UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
  E.HIRE_DATE AS `Data de início do cargo`,
  E.SALARY AS `Salário`
FROM employees AS E
INNER JOIN JOB_HISTORY AS JH
  ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início do cargo`;
