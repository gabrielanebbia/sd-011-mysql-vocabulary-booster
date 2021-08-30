USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL varchar(25))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(j.EMPLOYEE_ID)
    FROM employees e
    INNER JOIN hr.job_history AS j ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = EMAIL INTO total;
    RETURN total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario();