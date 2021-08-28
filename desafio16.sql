USE hr
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA    
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(jh.job_id)
FROM hr.employees AS e
INNER JOIN job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.email = email INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
