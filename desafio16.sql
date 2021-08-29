USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  SELECT COUNT(*)
  FROM hr.job_history AS jh
  WHERE jh.EMPLOYEE_ID IN (
    SELECT e.EMPLOYEE_ID
    FROM hr.employees AS e
    WHERE e.EMAIL = email
  )
  INTO @quantity;
  RETURN @quantity;
END $$

DELIMITER ;
