-- 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março

-- Use o banco hr como referência

-- Monte uma query que exiba 03 colunas:

-- 1. A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).

-- 2.  segunda deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.

-- 3. A terceira deve possuir o alias "Salário" e exibir o salário da pessoa.

-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.

-- Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT 
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
JB.START_DATE AS `Data de início`,
E.SALARY AS Salário
FROM 
hr.employees AS E
INNER JOIN 
hr.job_history AS JB 
ON E.DEPARTMENT_ID = JB.DEPARTMENT_ID
WHERE MONTH(JB.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
