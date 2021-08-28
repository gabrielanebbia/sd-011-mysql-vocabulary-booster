SELECT j.JOB_TITLE AS 'Cargo',
j.MAX_SALARY - j.MIN_SALARY AS 'Variação Salarial',
ROUND(MIN(e.salary), 2) AS 'Média mínima mensal',
ROUND(MAX(e.salary), 2) AS 'Média máxima mensal'
FROM hr.jobs j
LEFT JOIN hr.employees e ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY j.MAX_SALARY - j.MIN_SALARY ASC, j.JOB_TITLE ASC;
