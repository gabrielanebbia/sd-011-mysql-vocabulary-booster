USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailEmployees VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(*)
FROM hr.employees AS e
INNER JOIN job_history AS h
ON e.employee_ID = h.employee_ID
WHERE emailEmployees = e.email
INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$
DELIMITER ;
