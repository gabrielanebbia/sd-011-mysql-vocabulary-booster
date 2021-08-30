SELECT
j.JOB_TITLE AS 'Cargo',
round(AVG (e.SALARY), 2) AS 'Média salarial',
CASE
WHEN round(AVG (e.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN round(AVG (e.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN round(AVG (e.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN round(AVG (e.SALARY), 2) > 10500 THEN 'CEO'
ELSE 'Não especificado'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY `Cargo`
ORDER BY 2, 1 ASC;
