DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emp_email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(*)
FROM job_history JH
INNER JOIN employees EMP
ON EMP.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE EMP.EMAIL = emp_email
INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
