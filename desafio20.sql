-- USE hr;

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(30))
BEGIN
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
d.department_name AS Departamento,
j.job_title AS Cargo
FROM hr.job_history jh
INNER JOIN hr.employees e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN hr.jobs j
ON j.JOB_ID = jh.JOB_ID
WHERE e.email = email
ORDER BY Departamento, Cargo;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');