DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE contador INT;
SELECT COUNT(jh.EMPLOYEE_ID) 
FROM hr.job_history as jh
INNER JOIN hr.employees as emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email
INTO contador;
RETURN contador;
END $$
DELIMITER ;
