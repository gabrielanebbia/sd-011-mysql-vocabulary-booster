SELECT
j.job_title AS 'Cargo', ROUND(AVG(e.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(salary), 2) BETWEEN 7501 AND 10500 THEN 'Senior'
ELSE 'CEO'
END AS 'Senioridade'
FROM
employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY `Média salarial`;
