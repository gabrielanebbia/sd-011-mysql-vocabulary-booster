USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailRecebido VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_de_empregos INT;
SELECT COUNT(*) FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE EMAIL = emailRecebido
INTO total_de_empregos;
RETURN total_de_empregos;
END $$

DELIMITER ;
