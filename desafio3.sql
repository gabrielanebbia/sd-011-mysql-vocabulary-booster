-- Exiba os cargos com a diferença entre seus salários máximo e mínimo
SELECT * FROM hr.jobs;
SELECT JOB_TITLE AS "Cargo",
(MAX_SALARY- MIN_SALARY) AS "Diferença entre salários máximo e mínimo"
FROM hr.jobs ORDER BY (MAX_SALARY - MIN_SALARY) ASC,(MAX_SALARY = MIN_SALARY) DESC;
