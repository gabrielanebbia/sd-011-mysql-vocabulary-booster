SELECT job.JOB_TITLE AS "Cargo",ROUND(AVG(employ.SALARY), 2) AS "Média salarial",
CASE
WHEN ROUND(AVG(employ.SALARY), 2) > 10500 THEN 'CEO'
WHEN ROUND(AVG(employ.SALARY), 2) > 7501 THEN 'Sênior'
WHEN ROUND(AVG(employ.SALARY), 2) > 5801 THEN 'Pleno'
WHEN ROUND(AVG(employ.SALARY), 2) > 2000  THEN 'Júnior'
END AS "Senioridade"
FROM hr.jobs AS job 
INNER JOIN hr.employees AS employ
ON job.JOB_ID = employ.JOB_ID
GROUP BY(job.JOB_TITLE)
ORDER BY 2 ASC, 1 ASC;
