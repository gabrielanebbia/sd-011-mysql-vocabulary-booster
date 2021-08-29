SELECT JOB_TITLE AS 'Cargo', MAX_SALARY - MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
GROUP BY Cargo, `Diferença entre salários máximo e mínimo`
ORDER BY MAX_SALARY - MIN_SALARY, Cargo;
