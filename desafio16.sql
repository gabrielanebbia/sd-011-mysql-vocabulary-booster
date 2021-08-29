use hr;
DELIMITER $$

CREATE FUNCTION antidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(*) FROM hr.job_history AS hist
INNER JOIN
hr.employees AS emp ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
