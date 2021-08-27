DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE job INT;
    SELECT COUNT(j.JOB_ID) FROM hr.employees AS e
    INNER JOIN hr.job_history AS j
    ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
    WHERE e.EMAIL = EMAIL
    INTO job;
    RETURN job;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
