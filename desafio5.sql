SELECT hj.JOB_TITLE AS 'Cargo',
ROUND((hj.MAX_SALARY - hj.MIN_SALARY), 2) AS 'Variação Salarial',
ROUND((AVG(hj.MIN_SALARY)/12), 2) AS 'Média mínima mensal',
ROUND((AVG(hj.MAX_SALARY)/12), 2) AS 'Média máxima mensal'
FROM hr.employees AS he
INNER JOIN hr.jobs AS hj
ON he.JOB_ID = hj.JOB_ID
GROUP BY he.JOB_ID 
ORDER BY ROUND((hj.MAX_SALARY - hj.MIN_SALARY), 2), Cargo;
