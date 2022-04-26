USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(funcionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE historico_empregos INT;
    SELECT COUNT(*)
    FROM hr.employees AS e
    INNER JOIN hr.job_history AS j
    ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
    WHERE e.EMAIL = funcionario INTO historico_empregos;
    RETURN historico_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario(NKOCHHAR);
