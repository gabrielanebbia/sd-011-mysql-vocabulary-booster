SELECT
j.JOB_TITLE AS Cargo,
ROUND(AVG(j.MAX_SALARY - j.MIN_SALARY)) AS "Variação Salarial",
ROUND(AVG(j.MIN_SALARY)/12, 2) AS "Média mínima mensal",
ROUND(AVG(j.MAX_SALARY)/12, 2) AS "Média máxima mensal"
FROM hr.jobs j
GROUP BY j.JOB_TITLE
ORDER BY ROUND(AVG(j.MAX_SALARY - j.MIN_SALARY)) ASC, Cargo ASC;
