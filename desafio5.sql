SELECT
j.JOB_TITLE AS Cargo,
j.MAX_SALARY - j.MIN_SALARY AS "Variação Salarial",
ROUND(j.MIN_SALARY/12, 2) AS "Média mínima mensal",
ROUND(j.MAX_SALARY/12, 2) AS "Média máxima mensal"
FROM hr.jobs j
GROUP BY j.JOB_TITLE
ORDER BY j.MAX_SALARY - j.MIN_SALARY ASC, j.JOB_TITLE ASC;
