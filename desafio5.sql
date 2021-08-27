SELECT
job_title AS 'Cargo',
(max_salary - min_salary) AS 'Variação Salarial',
TRUNCATE(CAST((min_salary / 12) AS DECIMAL(10, 2)), 2) AS 'Média mínima mensal',
TRUNCATE(CAST((max_salary / 12) AS DECIMAL(10, 2)), 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY
(max_salary - min_salary),
job_title;
