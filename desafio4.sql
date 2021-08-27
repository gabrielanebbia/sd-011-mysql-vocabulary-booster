SELECT j.job_title AS 'Cargo', ROUND(AVG(e.salary),2) AS 'Média salarial',
CASE
WHEN AVG(e.salary) <= 5800 THEN 'Júnior'
WHEN AVG(e.salary) <= 7500 THEN 'Pleno'
WHEN AVG(e.salary) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END as 'Senioridade'
FROM hr.jobs j
INNER JOIN hr.employees e
ON e.job_id = j.job_id
GROUP BY job_title
ORDER BY AVG(e.salary), j.job_title;
