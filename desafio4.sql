SELECT j.JOB_TITLE AS 'Cargo', ROUND(AVG(e.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(e.salary), 2) >= 2000 AND ROUND(AVG(e.salary)) <= 5000 THEN 'Júnior'
WHEN ROUND(AVG(e.salary), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(e.salary), 2) <= 10500 THEN 'Sênior'
ELSE 'CEO'	 
END AS 'Senioridade'
FROM hr.jobs j
INNER JOIN hr.employees e
ON j.JOB_ID = e.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo`;
