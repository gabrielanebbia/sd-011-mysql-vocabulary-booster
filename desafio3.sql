-- SELECT * FROM countries;
-- SELECT * FROM jobs;
SELECT 
    job_title AS 'Cargo', (max_salary - min_salary) AS 'Diferença entre salários máximo e mínimo'
FROM
    jobs
ORDER BY job_title, 'Diferença entre salários máximo e mínimo' DESC;
