SELECT
J.JOB_TITLE AS 'Cargo',
J.MAX_SALARY - J.MIN_SALARY AS `Diferença entre salários máximo e mínimo`
FROM hr.jobs as J
ORDER BY `Diferença entre salários máximo e mínimo`, J.JOB_TITLE;
