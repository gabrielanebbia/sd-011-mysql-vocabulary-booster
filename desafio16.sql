USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS VARCHAR(100) READS SQL DATA
BEGIN
    DECLARE total_empregos VARCHAR(100);
    SELECT COUNT(jo.DEPARTMENT_ID) AS 'total_empregos'
    FROM hr.job_history jo
    INNER JOIN hr.employees em 
    ON em.EMPLOYEE_ID = jo.EMPLOYEE_ID
    WHERE em.EMAIL = email INTO total_empregos;
    RETURN total_empregos;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');