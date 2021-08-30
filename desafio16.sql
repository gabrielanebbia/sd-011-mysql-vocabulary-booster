DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE countJob INT;
SELECT COUNT(*)
FROM hr.job_history j
INNER JOIN hr.employees e
ON j.employee_id = e.employee_id
WHERE e.email = email
INTO countJob;
RETURN countJob;
END $$

DELIMITER ;
