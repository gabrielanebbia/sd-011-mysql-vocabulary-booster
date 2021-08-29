DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(job.EMPLOYEE_ID)
FROM hr.employees AS emp
INNER JOIN hr.job_history AS job ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO total;
RETURN total;
END $$

DELIMITER ;
