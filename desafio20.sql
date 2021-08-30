DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(30))
BEGIN
SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
department_name AS 'Departamento',
job_title AS Cargo
FROM hr.employees e
INNER JOIN hr.departments d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.jobs j
ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.email = email;
END $$
DELIMITER ;
