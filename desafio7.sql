SELECT UCASE(CONCAT(job.FIRST_NAME, ' ', job.LAST_NAME)) AS 'Nome completo', history.START_DATE AS 'Data de início', job.SALARY AS 'Salário'
FROM hr.employees AS job
INNER JOIN job_history AS history ON job.EMPLOYEE_ID = history.EMPLOYEE_ID
ORDER BY UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)), START_DATE;
