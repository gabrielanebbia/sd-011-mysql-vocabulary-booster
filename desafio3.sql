SELECT JOB_TITLE AS Cargo,
 AVG(MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
 FROM hr.jobs
 GROUP BY JOB_TITLE
ORDER BY AVG(MAX_SALARY - MIN_SALARY) ASC, Cargo;
