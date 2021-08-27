SELECT t1.JOB_TITLE AS Cargo,
ROUND(AVG(E.SALARY), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM employees AS t1
INNER JOIN jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial`, Cargo;
