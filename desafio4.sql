SELECT JOBS.job_title AS 'Cargo', ROUND(AVG(EMPLOYEES.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(EMPLOYEES.salary), 2) >= 2000 AND ROUND(AVG(EMPLOYEES.salary)) <= 5000 THEN 'Júnior'
WHEN ROUND(AVG(EMPLOYEES.salary), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(EMPLOYEES.salary), 2) <= 10500 THEN 'Sênior'
ELSE 'CEO'	 
END AS Senioridade
FROM hr.jobs as JOBS
INNER JOIN hr.employees AS EMPLOYEES
ON JOBS.job_id = EMPLOYEES.job_id
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo`;
