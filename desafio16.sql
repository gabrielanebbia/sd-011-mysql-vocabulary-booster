USE hr; 
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE resultado INT; 
SELECT COUNT(j.employee_id) FROM employees AS e
INNER JOIN job_history AS j ON j.employee_id = e.employee_id
WHERE e.EMAIL = email INTO resultado;
RETURN resultado;
END $$
DELIMITER ;
