SELECT JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND(MIN_SALARY/12, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY/12, 2) AS 'Média máxima mensal'
FROM
hr.employees AS e
INNER JOIN
hr.jobs AS j
ON
e.JOB_ID = j.JOB_ID
GROUP BY JOB_TITLE,
ORDER BY (MAX_SALARY - MIN_SALARY), JOB_TITLE;
