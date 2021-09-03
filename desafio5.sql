-- Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal, considerando salários máximo e minímo como anuais
-- warning Considere os salários máximo e mínimo de um cargo como salários anuais. warning
SELECT job_title AS 'Cargo', 
(max_salary - min_salary) AS 'Variação Salarial',
ROUND((min_salary/ 12), 2) AS 'Média mínima mensal',
ROUND((max_salary/ 12), 2) AS 'Média mínima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial`, Cargo;
