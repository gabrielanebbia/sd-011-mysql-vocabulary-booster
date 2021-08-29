-- Ajuda de Italo matos
SELECT JOB_TITLE AS 'Cargo',
ROUND(AVG(b.SALARY), 2) AS 'Média salarial',
CASE
WHEN (ROUND(AVG(b.SALARY), 2)) >= 2000 AND ROUND(AVG(b.SALARY), 2) <= 5800 THEN ('Júnior')
WHEN (ROUND(AVG(b.SALARY), 2)) >= 5801 AND ROUND(AVG(b.SALARY), 2) <= 7500 THEN ('Pleno')
WHEN (ROUND(AVG(b.SALARY), 2)) >= 7501 AND ROUND(AVG(b.SALARY), 2) <= 10500 THEN ('Sênior')
WHEN (ROUND(AVG(b.SALARY), 2)) > 10501 THEN ('CEO')
END AS 'Senioridade'
FROM hr.jobs AS a
INNER JOIN hr.employees AS b
ON a.JOB_ID = b.JOB_ID
GROUP BY a.JOB_ID
ORDER BY `Média salarial`, `Cargo`;
