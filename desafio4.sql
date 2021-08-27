SELECT jobs.job_title AS 'Cargo', ROUND(AVG(emp.salary),2) AS 'Média salarial',
CASE
WHEN AVG(emp.salary) <= 5800 THEN 'Júnior'
WHEN AVG(emp.salary) <= 7500 THEN 'Pleno'
WHEN AVG(emp.salary) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs jobs
INNER JOIN hr.employees emp
ON emp.JOB_ID = jobs.JOB_ID
GROUP BY JOB_TITLE
ORDER BY AVG(emp.salary), jobs.JOB_TITLE;
