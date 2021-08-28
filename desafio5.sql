SELECT J.JOB_TITLE AS 'Cargo',
(J.MAX_SALARY - J.MIN_SALARY) AS 'Variação Salarial',
ROUND(J.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
ROUND(J.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM jobs J
ORDER BY `Variação salarial` ASC , Cargo ASC;
