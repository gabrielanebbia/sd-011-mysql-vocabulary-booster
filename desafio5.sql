SELECT j.JOB_TITLE AS 'Cargo', (j.MAX_SALARY - j.MIN_SALARY) AS 'Variação Salarial',
ROUND(MIN(e.SALARY), 2) AS 'Média mínima mensal', ROUND(MAX(e.SALARY), 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
INNER JOIN employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY (MAX_SALARY-MIN_SALARY), j.JOB_TITLE;
