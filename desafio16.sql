DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario (IN var_email VARCHAR(20))
BEGIN
SELECT COUNT(e.employee_id) AS 'total_empregos'
FROM hr.job_history j
INNER JOIN hr.employees e 
ON j.employee_id = e.employee_id
WHERE var_email = e.email;
END $$

DELIMITER ;
