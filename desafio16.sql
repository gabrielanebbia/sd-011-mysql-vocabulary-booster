USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE historico INT;
    SELECT COUNT(*) FROM hr.job_history jh WHERE 
    jh.EMPLOYEE_ID IN (SELECT e.EMPLOYEE_ID FROM hr.employees e WHERE e.EMAIL = email) INTO historico;
    RETURN historico;
END $$

DELIMITER ;
