SELECT UCASE(CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME)) AS "Nome completo",
job_history.START_DATE AS "Data de início",
employ.SALARY AS  "Salário"
FROM hr.employees AS employ
INNER JOIN hr.job_history AS job_history
ON employ.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) = 03
OR MONTH(job_history.START_DATE) = 02
OR MONTH(job_history.START_DATE) = 01
ORDER BY 1 ASC, 2 ASC;
