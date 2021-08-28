DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario
(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN DECLARE quantidade_empregos INT;
SELECT COUNT(J.job_id)
FROM hr.employees AS E
INNER JOIN hr.job_history AS J
ON E.employee_id = J.employee_id
WHERE E.email = email INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$
DELIMITER ;
