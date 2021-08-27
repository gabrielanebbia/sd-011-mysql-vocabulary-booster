SELECT t2.job_title AS "Cargo",
t2.max_salary - t2.min_salary AS "Variação Salarial",
ROUND(AVG(t2.min_salary / 12), 2) AS "Média mínima mensal",
ROUND(AVG(t2.max_salary / 12), 2) AS "Média máxima mensal"
FROM employees AS t1
INNER JOIN jobs AS t2
ON t1.job_id = t2.job_id
GROUP BY t1.job_id
ORDER BY `Variação Salarial`, t2.job_title;
