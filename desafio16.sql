USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS DOUBLE READS SQL DATA
BEGIN 
DECLARE numeroEmpregos INT;
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO numeroEmpregos;
RETURN numeroEmpregos;
END $$
DELIMITER ;
