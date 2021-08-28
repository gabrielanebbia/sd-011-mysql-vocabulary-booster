-- 20 - Toda pessoa funcionária no banco hr possui um histórico completo de cargos.
--  Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que,
--   dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico
USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN

SELECT CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS `Nome completo`,
DEP.DEPARTMENT_NAME AS `Departamento`,
J.JOB_TITLE AS `Cargo`
FROM hr.job_history as JS
INNER JOIN hr.employees AS EMP
ON JS.EMPLOYEE_ID = EMP.EMPLOYEE_ID
INNER JOIN hr.departments AS DEP
ON JS.DEPARTMENT_ID = DEP.DEPARTMENT_ID
INNER JOIN hr.jobs AS J
ON JS.JOB_ID = J.JOB_ID
WHERE EMP.EMAIL LIKE CONCAT('%', email, '%')
ORDER BY `Departamento`, `Cargo`;

END $$

DELIMITER ;



CALL exibir_historico_completo_por_funcionario("NKOCHHAR");
