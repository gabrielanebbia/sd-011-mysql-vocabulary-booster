DELIMITER //
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalEmpregos INT;
SELECT COUNT(*) 
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE email = e.EMAIL
INTO totalEmpregos;
RETURN totalEmpregos;
END //
DELIMITER ;
