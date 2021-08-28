SELECT
job_title AS Cargo,
max_salary - min_salary AS "Variação Salarial",
ROUND((MIN_SALARY / 12), 2) AS "Média mínima mensal",
ROUND((MAX_SALARY / 12), 2) AS "Média máxima mensal"
FROM hr.jobs
ORDER BY "Variação Salarial" ASC, Cargo;
