-- Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
-- Obtenha informações a respeito dos salários das pessoas empregadas.
SELECT j.job_title AS "Cargo",
ROUND(AVG(e.SALARY), 2) AS "Média salarial",
CASE
WHEN AVG(e.SALARY) BETWEEN 2000 AND  5800 THEN "Júnior"
WHEN AVG(e.SALARY) BETWEEN 5801 AND  7500 THEN "Pleno"
WHEN AVG(e.SALARY) BETWEEN 7501 AND  10500 THEN "Sênior"
WHEN AVG(e.SALARY) = 10500 THEN "CEO"
END AS "Senioridade"
FROM hr.jobs j
INNER JOIN hr.employees e
ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY `Média salarial`, cargo;
