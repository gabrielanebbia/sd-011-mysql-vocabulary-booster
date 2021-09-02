SELECT * FROM hr.job_history;
SELECT * FROM hr.employees;
SELECT * FROM hr.jobs;

SELECT
concat(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
date_format(jh.START_DATE, 'dd/mm/yyyy') AS 'Data de início'
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID;

