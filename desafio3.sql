SELECT j.JOB_TITLE AS 'Cargo',
MAX_SALARY - MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs AS j
GROUP BY j.JOB_ID ORDER BY `Diferença entre salários máximo e mínimo`ASC, Cargo ASC;
