SELECT
job.JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
ROUND(MIN_SALARY / 12, 2) AS `Média mínima mensal`,
ROUND(MAX_SALARY / 12, 2) AS `Média máxima mensal`
FROM hr.jobs AS job
INNER JOIN
hr.employees AS emp ON job.JOB_ID = emp.JOB_ID
GROUP BY Cargo
ORDER BY `Variação Salarial`, Cargo;
