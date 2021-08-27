SELECT 
  JOB_TITLE AS 'Cargo',
  MAX(MAX_SALARY) - MIN(MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
GROUP BY JOB_TITLE
ORDER BY MAX(MAX_SALARY) - MIN(MIN_SALARY), JOB_TITLE;
