DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(150))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) FROM hr.job_history jh
WHERE jh.EMPLOYEE_ID IN (
SELECT emp.EMPLOYEE_ID FROM hr.employees emp
WHERE emp.EMAIL = email
) INTO total;
RETURN total;
END $$

DELIMITER ;
