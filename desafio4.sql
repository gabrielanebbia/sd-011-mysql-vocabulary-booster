SELECT
j.JOB_TITLE AS 'Cargo',
ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(e.SALARY), 2) < 7500 THEN 'Pleno'
WHEN ROUND(AVG(e.SALARY), 2) < 10500 THEN 'Sênior'
WHEN ROUND(AVG(e.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM
jobs AS j
INNER JOIN
employees AS e
ON
j.JOB_ID = e.JOB_ID
GROUP BY
e.JOB_ID
ORDER BY
ROUND(AVG(e.SALARY), 2) ASC,
j.JOB_TITLE ASC;
