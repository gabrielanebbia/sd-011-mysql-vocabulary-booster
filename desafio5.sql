-- Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal, considerando salários máximo e minímo como anuais
-- warning Considere os salários máximo e mínimo de um cargo como salários anuais. warning
SELECT JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND(MIN_SALARY / 12, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC, JOB_TITLE ASC;

