SELECT jobs.JOB_TITLE AS Cargo,
round(AVG(e.salary), 2) AS 'Média Salarial',
CASE
WHEN AVG(e.salary) >= 2000 AND AVG(e.salary) <= 5800 THEN 'Júnior'
WHEN AVG(e.salary) >= 5801 AND AVG(e.salary) <= 7500 THEN 'Pleno'
WHEN AVG(e.salary) >= 7501 AND AVG(e.salary) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS Senioridade 
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS e ON jobs.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY ROUND(AVG(e.salary), 2), jobs.JOB_TITLE;
