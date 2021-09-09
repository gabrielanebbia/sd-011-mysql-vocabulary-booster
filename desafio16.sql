DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA BEGIN
DECLARE total INT;
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history AS jh
  INNER JOIN hr.employees AS em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE em.EMAIL = email INTO total;
RETURN total;
END $$ 
DELIMITER ;
