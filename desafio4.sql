SELECT jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(emp.SALARY), 2) > 10500 THEN 'CEO'
WHEN ROUND(AVG(emp.SALARY), 2) > 7500 THEN 'Sênior'
WHEN ROUND(AVG(emp.SALARY), 2) > 5800 THEN 'Pleno'
ELSE 'Júnior'
END AS 'Senioridade'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS emp
ON jobs.JOB_ID = emp.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY ROUND(AVG(emp.SALARY), 2), Cargo;
