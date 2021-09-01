SELECT job_title AS 'Cargo',
ROUND(((max_salary + min_salary) / 2), 2) AS 'Média salarial',
CASE
WHEN ((max_salary + min_salary) / 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ((max_salary + min_salary) / 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ((max_salary + min_salary) / 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ((max_salary + min_salary) / 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs
ORDER BY ((max_salary + min_salary) / 2) ASC, job_title ASC;
