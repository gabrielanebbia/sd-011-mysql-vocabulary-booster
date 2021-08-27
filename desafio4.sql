SELECT jobs.JOB_TITLE AS 'Cargo', ROUND(AVG(employees.SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(employees.SALARY) <= 5800 THEN 'Júnior'
WHEN AVG(employees.SALARY) <= 7500 THEN 'Pleno'
WHEN AVG(employees.SALARY) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade' FROM hr.jobs
INNER JOIN hr.employees ON jobs.JOB_ID = employees.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY AVG(employees.SALARY), jobs.JOB_TITLE;
