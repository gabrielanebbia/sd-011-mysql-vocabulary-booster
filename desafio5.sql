SELECT JOB_TITLE AS Cargo,
ROUND(AVG(MAX_SALARY - MIN_SALARY), 0) AS 'Variação Salarial',
ROUND(AVG(MIN_SALARY) / 12, 2) AS 'Média mínima mensal',
ROUND(AVG(MAX_SALARY) / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY JOB_TITLE
ORDER BY AVG((MAX_SALARY - MIN_SALARY)), JOB_TITLE;