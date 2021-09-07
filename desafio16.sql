USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT DETERMINISTIC
BEGIN
DECLARE emailFunc VARCHAR(50);
SELECT COUNT(*) FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
AND e.EMAIL = email INTO emailFunc;
RETURN emailFunc;
END $$

DELIMITER ;
