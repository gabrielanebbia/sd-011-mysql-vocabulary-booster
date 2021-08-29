-- 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas
-- Monte uma query que exiba 04 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.
-- Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.
SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS `Nome completo`, 
job.JOB_TITLE  AS Cargo,
jhis.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jhis
ON jhis.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN departments AS d
ON d.DEPARTMENT_ID = jhis.DEPARTMENT_ID
INNER JOIN hr.jobs AS job
ON jhis.JOB_ID = job.JOB_ID
ORDER BY CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) DESC, Cargo;
