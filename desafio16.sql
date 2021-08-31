USE hr
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(JH.EMPLOYEE_ID)
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
WHERE E.EMAIL LIKE employee_email AND E.EMPLOYEE_ID = JH.EMPLOYEE_ID INTO total;
RETURN total;
END $$
DELIMITER ;
