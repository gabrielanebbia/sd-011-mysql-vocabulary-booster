SELECT 
jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG (employees.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG (employees.SALARY), 2) >= 2000 AND ROUND(AVG (employees.SALARY), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG (employees.SALARY), 2) >= 5801 AND ROUND(AVG (employees.SALARY), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG (employees.SALARY), 2) >= 7501 AND ROUND(AVG (employees.SALARY), 2) <= 10500 THEN 'Sênior'
WHEN ROUND(AVG (employees.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS employees
ON jobs.JOB_ID = employees.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY ROUND(AVG (employees.SALARY)), jobs.JOB_TITLE;
