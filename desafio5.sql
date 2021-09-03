SELECT 
jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG (jobs.MAX_SALARY - jobs.MIN_SALARY), 2) AS 'Variação Salarial',
ROUND(AVG (jobs.MIN_SALARY), 2) AS 'Média mínima mensal',
ROUND(AVG (jobs.MAX_SALARY), 2) AS 'Média máxima mensal'
FROM hr.jobs AS jobs
GROUP BY jobs.JOB_TITLE
ORDER BY ROUND(AVG (jobs.MAX_SALARY - jobs.MIN_SALARY), 2), jobs.JOB_TITLE;
