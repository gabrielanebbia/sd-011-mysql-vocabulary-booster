-- 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas
-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas.
-- Use o banco hr como referência
-- Monte uma query que exiba 04 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da 
-- pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.
-- Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.




SELECT CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS "Nome completo",
      J.JOB_TITLE AS 'Cargo',
      JH.START_DATE AS 'Data de início do cargo',
      D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history as JH
INNER JOIN hr.employees AS EMP
ON JH.EMPLOYEE_ID = EMP.EMPLOYEE_ID
INNER JOIN hr.jobs AS J
ON JH.JOB_ID = J.JOB_ID
INNER JOIN hr.departments AS D
ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) DESC, J.JOB_TITLE ASC;
