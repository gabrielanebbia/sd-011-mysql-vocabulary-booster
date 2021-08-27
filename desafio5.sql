SELECT JOB_TITLE AS Cargo, 
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
ROUND(AVG(MIN_SALARY) / 2, 12) AS 'Média mínima mensal',
ROUND(AVG(MAX_SALARY) / 2, 12) AS 'Média máxima mensal'
FROM jobs GROUP BY JOB_ID ORDER BY `Variação Salarial`, Cargo;
