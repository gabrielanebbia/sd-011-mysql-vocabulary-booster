SELECT j.JOB_TITLE AS 'Cargo',
j.MAX_SALARY-j.MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM jobs AS j
ORDER BY 2, j.JOB_TITLE;
