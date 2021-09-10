SELECT j.JOB_TITLE AS 'Cargo', ROUND(AVG(e.SALARY), 2) AS 'Média Salarial',
CASE
WHEN ROUND(AVG(e.SALARY)) >= 2000 AND ROUND(AVG(e.SALARY)) <= 5000 THEN 'Júnior'
WHEN ROUND(AVG(e.SALARY)) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(e.SALARY)) <= 10500 THEN 'Sênior'
ELSE 'CEO'	 
END AS 'Senioridade'
FROM hr.jobs j
INNER JOIN hr.employees e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Média Salarial`, `Cargo`;
