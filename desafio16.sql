USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_job INT;
SELECT COUNT(*) FROM hr.job_history AS jh
WHERE jh.EMPLOYEE_ID IN
(
SELECT e.EMPLOYEE_ID FROM hr.employees AS e WHERE e.EMAIL = email
)
INTO total_job;
RETURN total_job;
END $$
DELIMITER ;
