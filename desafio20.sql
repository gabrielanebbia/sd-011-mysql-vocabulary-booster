USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20))
BEGIN
SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
DEPARTMENT_NAME AS `Departamento`,
JOB_TITLE AS `Cargo`
FROM employees AS e
INNER JOIN job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND e.EMAIL = email
INNER JOIN departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN jobs AS j ON jh.JOB_ID = j.JOB_ID
ORDER BY `Departamento`, `Cargo` ASC;  
END $$

DELIMITER $$;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
