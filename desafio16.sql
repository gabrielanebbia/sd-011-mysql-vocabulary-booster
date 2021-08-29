USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE job_total INT;
    SELECT COUNT(*)
    FROM job_history AS j
    INNER JOIN employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
    WHERE e.email = EMAIL INTO job_total;
    RETURN job_total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
