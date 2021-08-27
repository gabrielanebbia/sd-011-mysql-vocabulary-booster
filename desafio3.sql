SELECT DISTINCT JOB_TITLE AS Cargo, MAX_SALARY - MIN_SALARY
AS `Diferença entre salários máximo e mínimo`
FROM hr.employees AS em 
INNER JOIN hr.jobs AS jo
ON em.JOB_ID = jo.JOB_ID
ORDER BY `Diferença entre salários máximo e mínimo`;
