USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE emprego_total INT;
SELECT COUNT(*) FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email
INTO emprego_total;
RETURN emprego_total;
END $$

DELIMITER ;
