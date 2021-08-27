-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo

-- Use o banco hr como referência

-- Suponha que haja somente 03 pessoas funcionárias, João, Maria e Alex, e:

-- João e Maria possuem o mesmo cargo;

-- Alex não tem outra pessoa funcionária com o mesmo cargo.

-- Logo, podemos dizer que João tem uma pessoa funcionária associada, Maria, que possui o mesmo cargo. Também podemos dizer que Maria tem uma pessoa funcionária associada, João, que possui o mesmo cargo. Já Alex não tem outra pessoa funcionária associada com o mesmo cargo. Portanto, seu relatório deveria ter dois resultados, um indicando que Maria tem uma pessoa associada João que possui o mesmo cargo, e o outro resultado indicando que João tem uma pessoa associada Maria que possui o mesmo cargo.

-- Monte uma query que exiba 06 colunas:

-- 1. A primeira deve possuir o alias "Nome completo funcionário 1" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).

-- 2. A segunda deve possuir o alias "Salário funcionário 1" e exibir o salário dessa pessoa.

-- 3. A terceira deve possuir o alias "Telefone funcionário 1" e exibir o número de telefone dessa pessoa.

-- 4. A quarta deve possuir o alias "Nome completo funcionário 2" e exibir o nome completo da pessoa funcionária associada que possui o mesmo cargo (não se esqueça do espaço entre o nome e o sobrenome).

-- 5. A quinta deve possuir o alias "Salário funcionário 2" e exibir o salário da pessoa funcionária associada que possui o mesmo cargo.

-- 6. A sexta deve possuir o alias "Telefone funcionário 2" e exibir o número da pessoa funcionária associada que possui o mesmo cargo.

-- Os resultados devem estar ordenados pela coluna "Nome completo funcionário 1" em ordem alfabética.

-- Em caso de empate, os resultados devem ser ordenados pela coluna Nome completo funcionário 2" em ordem alfabética.


SELECT
CONCAT(E1.FIRST_NAME, ' ', E1.LAST_NAME) AS `Nome completo funcionário 1`,
E1.SALARY AS `Salário funcionário 1`,
E1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME) AS `Nome completo funcionário 2`,
E2.SALARY AS `Salário funcionário 2`,
E2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS E1
INNER JOIN hr.employees AS E2
ON E1.JOB_ID = E2.JOB_ID
WHERE E1.EMPLOYEE_ID <> E2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
