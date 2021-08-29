USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(120))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_emprego INT;
SELECT COUNT(*) FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO quantidade_emprego;
RETURN quantidade_emprego;
END $$
DELIMITER ;
