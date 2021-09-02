SELECT
JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND(MAX_SALARY / 12, 2) AS 'Média máxima mensal',
ROUND(MIN_SALARY / 12, 2) AS 'Média mínima mensal'
FROM
jobs
ORDER BY
(MAX_SALARY - MIN_SALARY) ASC,
JOB_TITLE ASC;