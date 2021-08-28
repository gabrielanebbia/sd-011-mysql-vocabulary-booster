SELECT
    jobs.JOB_TITLE AS Cargo,
    jobs.MAX_SALARY - jobs.MIN_SALARY AS "Variação Salarial",
    ROUND(AVG(jobs.MIN_SALARY), 2) AS "Média mínima mensal",
    ROUND(AVG(jobs.MAX_SALARY), 2) AS "Média máxima mensal"
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
GROUP BY Cargo
ORDER BY jobs.MAX_SALARY - jobs.MIN_SALARY ASC, Cargo ASC;
