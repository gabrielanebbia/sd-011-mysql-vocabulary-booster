-- 5 - Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal, considerando salários máximo e minímo como anuais
-- warning Considere os salários máximo e mínimo de um cargo como salários anuais. warning
-- Use o banco hr como referência
-- Crie uma query que exiba 04 colunas:
-- A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda deve possuir o alias "Variação Salarial" e exibir a diferença entre os salários máximo e mínimo daquele cargo.
-- A terceira deve possuir o alias "Média mínima mensal" e exibir o salário mínimo mensal daquele cargo. Arredonde a média com uma precisão de duas casas decimais.
-- A quarta deve possuir o alias "Média máxima mensal" e exibir o salário máximo mensal daquele cargo. Arredonde a média com uma precisão de duas casas decimais.
-- Os resultados devem estar ordenados pela variação salarial em ordem crescente.
-- Em caso de empate na variação, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.

-- SELECT * FROM hr.jobs;
SELECT * FROM hr.employees;
SELECT JOB_TITLE AS Cargo FROM hr.jobs;

SELECT JOB_TITLE AS Cargo, (MAX_SALARY - MIN_SALARY) AS `Variação Salarial`
FROM hr.jobs ;
SELECT JOB_TITLE AS Cargo,  ROUND((MIN_SALARY DIV 12), 2) AS `Média mínima mensal`
FROM hr.jobs ;
SELECT JOB_TITLE AS Cargo,  ROUND((MAX_SALARY DIV 12)) AS `Média mínima mensal`
FROM hr.jobs ;