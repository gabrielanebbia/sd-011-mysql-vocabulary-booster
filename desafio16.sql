USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(*)
FROM hr.employees AS E
INNER JOIN hr.job_history AS JB
ON E.employee_id = JB.employee_id
WHERE email = E.email
INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$

DELIMITER ;
