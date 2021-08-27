SELECT
j.job_title AS 'Cargo',
j.MAX_SALARY - j.MIN_SALARY AS 'Variação Salarial',
ROUND(AVG(j.MIN_SALARY)/12,2) AS 'Média mínima mensal',
ROUND(AVG(j.MAX_SALARY)/12,2) AS 'Média máxima mensal'
FROM jobs AS j
GROUP BY j.job_id
ORDER BY `Variação Salarial`, `Cargo`;
