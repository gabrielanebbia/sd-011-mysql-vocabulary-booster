DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(jbh.EMPLOYEE_ID)
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jbh
ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO result;
RETURN result;
END $$

DELIMITER ;
