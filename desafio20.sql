USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_func VARCHAR(100))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo', 
d.DEPARTMENT_NAME Departamento,
j.JOB_TITLE Cargo
FROM employees e
INNER JOIN job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN jobs j ON j.JOB_ID = jh.jOB_ID
WHERE EMAIL = email_func
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
