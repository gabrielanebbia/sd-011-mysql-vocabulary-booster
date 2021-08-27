SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history jh
LEFT JOIN hr.employees e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs j
ON j.JOB_ID = jh.JOB_ID
WHERE MONTH(jh.START_DATE) <= 3
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC,
jh.START_DATE ASC;
