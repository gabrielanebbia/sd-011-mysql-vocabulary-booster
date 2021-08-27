SELECT j.JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND((MIN_SALARY / 12), 2) AS 'Média mínima mensal',
ROUND((MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM jobs AS j
INNER JOIN employees AS e
ON e.JOB_ID = j.JOB_ID
GROUP BY `Cargo`
ORDER BY `Variação Salarial`, `Cargo`;
