DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(60))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) AS 'total_empregos'
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email INTO total;
RETURN total;
END$$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS 'total_empregos';
