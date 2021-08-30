DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN email VARCHAR(20))
BEGIN
SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
d.department_name AS Departamento,
j.job_title AS Cargo
FROM hr.job_history j_h
INNER JOIN hr.employees e
ON e.employee_id = j_h.employee_id
INNER JOIN hr.departments d
ON d.department_id = j_h.department_id
INNER JOIN hr.jobs j
ON j.job_id = j_h.job_id
WHERE email = e.email
ORDER BY Departamento, Cargo;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario ('NKOCHHAR')