SELECT
UPPER(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
his.START_DATE AS 'Data de início',
emp.SALARY AS Salário
FROM hr.job_history AS his
INNER JOIN hr.employees AS emp
ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
ON his.JOB_ID = job.JOB_ID
WHERE MONTH(his.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
