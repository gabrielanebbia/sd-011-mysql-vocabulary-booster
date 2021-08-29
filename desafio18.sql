SELECT
CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) AS "Nome completo",
DATE_FORMAT(job.START_DATE,'%d/%m/%Y') AS "Data de início",
DATE_FORMAT(job.END_DATE,'%d/%m/%Y') AS "Data de rescisão",
ROUND(DATEDIFF(job.END_DATE, job.START_DATE)/365, 2) AS "Anos trabalhados"
FROM hr.employees AS emp
INNER JOIN hr.job_history AS job 
ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) ASC,
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2);
