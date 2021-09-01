USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailFunc VARCHAR(50))
BEGIN
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
d.department_name AS 'Departamento',
j.job_title AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.employee_id = jh.employee_id
INNER JOIN hr.departments AS d
ON jh.department_id = d.department_id
INNER JOIN hr.jobs AS j
ON jh.job_id = j.job_id
WHERE emailFunc = e.email
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
