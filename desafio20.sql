DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT
CONCAT(e.first_name , ' ', e.last_name) AS 'Nome completo',
d.department_name AS 'Departamento',
j.job_title AS 'Cargo'
FROM
job_history AS jh
INNER JOIN employees AS e
ON jh.employee_id = e.employee_id
INNER JOIN departments AS d
ON jh.department_id = d.department_id
INNER JOIN jobs AS j
ON jh.job_id = j.job_id
WHERE e.EMAIL = email
ORDER BY `Cargo`;
END $$

DELIMITER ;
