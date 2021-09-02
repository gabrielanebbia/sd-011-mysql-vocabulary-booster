DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM hr.employees AS he
INNER JOIN hr.job_history AS hjh
ON he.EMPLOYEE_ID = hjh.EMPLOYEE_ID
WHERE he.email = email INTO total;
RETURN total;
END $$

DELIMITER ;
