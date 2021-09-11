USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME ) AS `Nome completo`, dp.DEPARTMENT_NAME AS `Departamento`, jt.JOB_TITLE AS `Cargo` FROM hr.job_history AS jh INNER JOIN hr.departments AS dp ON dp.DEPARTMENT_ID = jh.DEPARTMENT_ID INNER JOIN hr.jobs AS jt ON jt.JOB_ID = jh.JOB_ID INNER JOIN hr.employees AS emp ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID WHERE emp.EMAIL = email ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
