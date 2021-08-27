SELECT
j.job_title as Cargo, ROUND(AVG(e.salary), 2) as "Média salarial",
CASE
WHEN ROUND(AVG(e.salary), 2) BETWEEN (2000) AND (5800) THEN 'Júnior'
WHEN ROUND(AVG(e.salary), 2) BETWEEN (5801) AND (7500) THEN 'Pleno'
WHEN ROUND(AVG(e.salary), 2) BETWEEN (7501) AND (10500) THEN 'Sênior'
WHEN ROUND(AVG(e.salary), 2) > 10500 THEN 'CEO'
END AS "Senioridade"
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY 2 ASC, j.JOB_ID;
