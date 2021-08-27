SELECT t2.JOB_TITLE as 'Cargo',
ROUND(AVG(t1.SALARY), 2) as 'Média salarial',
CASE
WHEN AVG(t1.SALARY) > 10500 THEN 'CEO'
WHEN AVG(t1.SALARY) > 7500 THEN 'Sênior'
WHEN AVG(t1.SALARY) > 5800 THEN 'Pleno'
ELSE 'Júnior'
AS 'Senioridade'
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.job_id = t2.job_id
GROUP BY t1.job_id
ORDER BY AVG(t1.SALARY), Cargo;
