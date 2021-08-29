USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE TOTAL SMALLINT;
	SELECT COUNT(e.EMAIL) FROM hr.employees AS e
    INNER JOIN hr.job_history AS jh
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE EMAIL = e.EMAIL
    GROUP BY e.EMAIL
    INTO TOTAL;
    RETURN TOTAL;
END $$

DELIMITER ;
