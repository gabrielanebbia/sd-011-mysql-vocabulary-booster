SELECT JOB_TITLE AS Cargo, `Média salarial`,
CASE
WHEN `Média salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN `Média salarial` BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN `Média salarial` BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS Senioridade
FROM (
SELECT JOB_ID,
ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees
GROUP BY JOB_ID
)
AS tmp
INNER JOIN hr.jobs ON tmp.JOB_ID = hr.jobs.JOB_ID
ORDER BY `Média salarial`, Cargo;
