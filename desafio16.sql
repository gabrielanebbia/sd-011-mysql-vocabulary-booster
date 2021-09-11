USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(*)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS emp ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO total_empregos;
RETURN total_empregos;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
