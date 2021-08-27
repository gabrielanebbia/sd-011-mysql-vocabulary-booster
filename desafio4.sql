-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
-- Obtenha informações a respeito dos salários das pessoas empregadas.
-- Use o banco hr como referência
-- Crie uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda deve possuir o alias "Média salarial" e exibir a média dos salários das pessoas empregadas que possuem o cargo em questão.
-- A terceira deve possuir o alias "Senioridade" e categorizar o nível de senioridade do cargo com base na média salarial, da seguinte forma:
-- Média salarial entre 2000 - 5800 --> Júnior
-- Média salarial entre 5801 - 7500 --> Pleno
-- Média salarial entre 7501 - 10500 --> Sênior
-- Média salarial acima de 10500 --> CEO
-- Sempre que fizer uso da média salarial, arredonde o valor para 02 casas decimais.
-- Os resultados devem estar ordenados pela média salarial em ordem crescente.
-- Em caso de empate na média, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.
SELECT j.JOB_TITLE AS Cargo, ROUND(AVG(SALARY), 2) AS `Média salarial`,
CASE
WHEN AVG(SALARY) >= 2000 AND AVG(SALARY) <= 5800 THEN 'Júnior'
WHEN AVG(SALARY) >= 5801 AND AVG(SALARY) <= 7500 THEN 'Pleno'
WHEN AVG(SALARY) >= 7501 AND AVG(SALARY) <= 10500 THEN 'Sênior'
WHEN AVG(SALARY) > 10500 THEN 'CEO'
ELSE 'não classificado'
END AS Senioridade
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY ROUND(AVG(SALARY), 2), j.JOB_TITLE;
