SELECT
j.job_title AS 'Cargo',
j.MAX_SALARY - j.MIN_SALARY AS 'Variação Salarial',
AVG(j.MIN_SALARY) AS 'Média mínima mensal',
AVG(j.MAX_SALARY) AS 'Média máxima mensal',
ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM jobs AS j
INNER JOIN employees AS e
ON j.job_id = e.job_id
GROUP BY j.job_id ORDER BY `Variação Salarial` AND `Cargo`;
