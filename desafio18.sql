SELECT
CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) AS "Nome completo",
DATE_FORMAT(job.START_DATE,'%d/%m/%Y') AS "Data de início",
DATE_FORMAT(job.END_DATE,'%d/%m/%Y') AS "Data de rescisão",
ROUND(TIMESTAMPDIFF(DAY, job.START_DATE, job.END_DATE)/365, 2) AS "Anos trabalhados"
FROM hr.employees AS emp
INNER JOIN hr.job_history AS job 
ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) ASC;