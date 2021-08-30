SELECT t.job_title AS 'Cargo', ROUND(AVG(s.salary), 2) AS 'Média Salarial',
CASE
WHEN AVG(s.salary) <= 5800 THEN 'Júnior'
WHEN AVG(s.salary) <= 7500 THEN 'Pleno'
WHEN AVG(s.salary) <= 10500 THEN 'Sênior'
WHEN AVG(s.salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS t
INNER JOIN hr.employees AS s ON t.JOB_ID = s.JOB_ID
GROUP BY job_title
ORDER BY AVG(s.salary) ASC, job_title ASC;
