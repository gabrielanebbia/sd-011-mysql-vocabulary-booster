SELECT
JOB_TITLE AS 'Cargo',
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
ROUND((MIN_SALARY / 12),2) as 'Média mínima mensal',
ROUND((MAX_SALARY / 12),2) as 'Média máxima mensal'
FROM hr.jobs
ORDER BY 2, 1 ASC;
