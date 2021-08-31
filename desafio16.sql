USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(a.EMAIL) AS total_empregos
FROM employees AS a
INNER JOIN job_history AS b
ON a.EMPLOYEE_ID = b.EMPLOYEE_ID
WHERE a.EMAIL = email
GROUP BY a.EMAIL
INTO total;
RETURN total;
END $$

DELIMITER ;
