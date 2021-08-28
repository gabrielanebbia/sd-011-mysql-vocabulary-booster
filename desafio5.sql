SELECT j.job_title AS Cargo,
j.max_salary - j.min_salary AS 'Variação Salarial',
ROUND(MIN(e.salary * 12), 2) AS 'Média mínima mensal',
ROUND(MAX(e.salary * 12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.job_id
GROUP BY job_title
ORDER BY `Variação Salarial`, job_title;
