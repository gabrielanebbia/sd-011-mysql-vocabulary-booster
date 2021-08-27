SELECT j.JOB_TITLE AS 'Cargo', ROUND(AVG(j.MAX_SALARY - j.MIN_SALARY), 2) AS 'Variação Salarial',
ROUND(MIN(j.MIN_SALARY)/12, 2) AS 'Média mínima mensal', ROUND(MAX(j.MAX_SALARY)/12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
INNER JOIN employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY ROUND(AVG(j.MAX_SALARY - j.MIN_SALARY), 2), j.JOB_TITLE;
