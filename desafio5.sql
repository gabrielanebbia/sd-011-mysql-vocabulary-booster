SELECT hj.job_title AS 'Cargo',
hj.max_salary - hj.min_salary AS 'Variação Salarial',
ROUND((AVG(hj.min_salary)/12), 2) AS 'Média mínima mensal',
ROUND((AVG(hj.max_salary)/12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS hj
INNER JOIN hr.employees AS he
ON he.job_id = hj.job_id
GROUP BY he.job_id
ORDER BY ROUND((hj.max_salary - hj.min_salary), 2), Cargo;
