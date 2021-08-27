SELECT t2.job_title AS "Cargo",
ROUND(AVG(t1.salary), 2) AS "Média salarial",
CASE
WHEN ROUND(AVG(t1.salary), 2) BETWEEN 2000 AND 5800 THEN "Júnior"
WHEN ROUND(AVG(t1.salary), 2) BETWEEN 5801 AND 7500 THEN "Pleno"
WHEN ROUND(ABG(t1.salary), 2) BETWEEN 7501 AND 10500 THEN "Sênior"
ELSE "CEO"
END AS "Senioridade"
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.job_id = t2.job_id
GROUP BY t2.job_title
ORDER BY `Média salarial`, t2.job_title;
