SELECT job.JOB_TITLE AS 'Cargo', 
(SELECT job.MAX_SALARY - job.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs as job ORDER BY (SELECT job.MAX_SALARY - job.MIN_SALARY),
job.JOB_TITLE;
