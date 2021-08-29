SELECT jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',

CASE
WHEN 'Média salarial' BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN 'Média salarial' BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN 'Média salarial' BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'

FROM hr.jobs AS jobs
INNER JOIN hr.employees AS emp
ON jobs.JOB_ID = emp.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY ROUND(AVG(emp.SALARY), 2), JOB_TITLE;
