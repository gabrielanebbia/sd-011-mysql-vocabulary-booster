SELECT t2.job_title AS "Cargo",
ROUND(AVG(salary), 2) AS "Média salarial",
CASE
WHEN salary BETWEEN 2000 AND 5800 THEN "Júnior"
WHEN salary BETWEEN 10001 AND 20000 THEN "Pleno"
WHEN salary BETWEEN 20001 AND 30000 THEN "Sênior"
ELSE "CEO"
END AS "Senioridade"
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.job_id = t2.job_id
GROUP BY t1.job_id
ORDER BY `Média salarial`, t2.job_title;
