SELECT CONCAT(UCASE(emp.FIRST_NAME),' ', UCASE(emp.LAST_NAME)) AS 'Nome completo',
jobsH.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobsH
ON emp.EMPLOYEE_ID = jobsH.EMPLOYEE_ID
WHERE MONTH(jobsH.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, jobsH.START_DATE;
