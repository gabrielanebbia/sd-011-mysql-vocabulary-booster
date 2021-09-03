USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(first_name,' ',last_name) AS 'Nome completo',
department_name AS 'Departamento',
job_title AS `Cargo`
FROM hr.employees AS E
INNER JOIN hr.departments AS D
ON E.department_id = D.department_id
INNER JOIN hr.job_history AS JB
ON E.job_id = JB.job_id
INNER JOIN hr.jobs AS J
ON E.job_id = J.job_id
WHERE email = E.email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
