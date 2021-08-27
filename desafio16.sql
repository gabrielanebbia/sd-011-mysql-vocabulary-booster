USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtd_empregos INT;
  SELECT COUNT(*) FROM hr.job_history jh
  INNER JOIN hr.employees e ON e.employee_id = jh.employee_id
  WHERE e.email = email INTO qtd_empregos;
  RETURN qtd_empregos;
END $$

DELIMITER ;
