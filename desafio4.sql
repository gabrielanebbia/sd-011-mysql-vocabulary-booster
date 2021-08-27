-- SELECT * FROM countries;
-- SELECT j.job_title AS 'Cargo'
-- FROM jobs AS j
-- INNER JOIN employees AS e
-- ON j.job_id = e.job_id;
-- SELECT * FROM jobs;
SELECT
job_id AS 'Cargo', ROUND(AVG(salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(salary), 2) BETWEEN 7501 AND 10500 THEN 'Senior'
ELSE 'CEO'
END AS 'Senioridade'
FROM
employees
GROUP BY job_id ORDER BY 'Cargo';
