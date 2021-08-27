SELECT j.job_title AS 'Cargo', ROUND(AVG(e.salary), 2) AS 'Média salarial',
CASE
WHEN AVG(e.salary) <= 5000.00 THEN 'Júnior'
WHEN AVG(e.salary) <= 7500.00 THEN 'Pleno'
WHEN AVG(e.salary) <= 10500.00 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY job_title
ORDER BY AVG(e.salary), j.job_title;
