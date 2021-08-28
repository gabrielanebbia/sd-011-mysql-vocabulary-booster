SELECT J.JOB_TITLE AS 'Cargo', J.MAX_SALARY - J.MIN_SALARY
AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs J
ORDER BY J.MAX_SALARY - J.MIN_SALARY ASC , Cargo ASC;
