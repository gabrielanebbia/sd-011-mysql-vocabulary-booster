CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20))
BEGIN
SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
d.department_name AS 'Departamento',
j.job_title AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j_h
ON e.employee_id = j_h.employee_id
INNER JOIN hr.departments AS d
ON j_h.department_id = d.department_id
INNER JOIN hr.jobs AS j
ON j_h.job_id = j.job_id
WHERE e.email = email
ORDER BY d.department_name, j.job_title;
END $$;

DELIMITER ;
