-- 3 - Exiba os cargos com a diferença entre seus salários máximo e mínimo
select JOB_TITLE AS 'Cargo', (MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo' from hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC, JOB_TITLE ASC;
