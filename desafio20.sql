DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
concat(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees e
INNER JOIN hr.job_history jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.jobs j
ON jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY 2, 3;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
