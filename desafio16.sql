USE hr;
DELIMITER $$ 
CREATE FUNCTION `buscar_quantidade_de_empregos_por_funcionario`(emailToSearch VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos TINYINT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.job_history
WHERE EMPLOYEE_ID = (
SELECT EMPLOYEE_ID
FROM hr.employees
WHERE EMAIL = emailToSearch
) INTO total_empregos;
RETURN total_empregos;
END $$
DELIMITER ;
