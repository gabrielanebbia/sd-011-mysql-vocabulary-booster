-- 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas

-- Use o banco hr como referência

-- Monte uma query que exiba 04 colunas:

-- 1. A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).

-- 2. A segunda deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.

-- 3. A terceira deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.

-- 4. A quarta deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.

-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.

-- Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.

SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
J.JOB_TITLE AS Cargo,
DATE(JB.START_DATE) AS `Data de início do cargo`,
D.DEPARTMENT_ID AS Departamento
FROM 
hr.employees AS E 
INNER JOIN 
hr.job_history AS JB 
ON E.EMPLOYEE_ID = JB.EMPLOYEE_ID
INNER JOIN 
hr.jobs AS J 
ON E.JOB_ID = J.JOB_ID 
INNER JOIN hr.departments AS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
