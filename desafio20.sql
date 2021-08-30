USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN EMAIL VARCHAR(100))
BEGIN
    SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', d.DEPARTMENT_NAME AS 'Departamento', j.JOB_TITLE AS 'Cargo'
    FROM employees AS e
    INNER JOIN job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    INNER JOIN jobs AS j ON j.JOB_ID = jh.JOB_ID
    INNER JOIN departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE e.EMAIL = EMAIL
ORDER BY Departamento, Cargo;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
