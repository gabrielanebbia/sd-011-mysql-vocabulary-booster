DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE emailCount INT;
SELECT COUNT(h.EMPLOYEE_ID) AS 'total_empregos'
FROM job_history AS h
INNER JOIN employees AS e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO emailCount;
RETURN emailCount;
END $$

DELIMITER ;
