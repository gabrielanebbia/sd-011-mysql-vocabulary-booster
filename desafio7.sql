SELECT 
	UCASE(CONCAT(emp.FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
  jb_hist.START_DATE AS 'Data de início',
  emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history as jb_hist
ON (
    MONTH(jb_hist.START_DATE) IN (01,02,03)
    AND jb_hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
    )
ORDER BY emp.FIRST_NAME ASC;