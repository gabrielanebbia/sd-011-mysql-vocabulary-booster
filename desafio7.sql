SELECT
  UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) 
  AS 'Nome completo',
  jh.START_DATE AS 'Data de início do cargo',
  emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history as jh
ON emp.EMPLOYEE_ID=jh.EMPLOYEE_ID
WHERE month(jh.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, jh.START_DATE;
