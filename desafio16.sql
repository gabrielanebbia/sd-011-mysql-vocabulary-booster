DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(search_email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_de_empregos INT;
  SELECT COUNT(*)
  FROM hr.job_history
  WHERE EMPLOYEE_ID IN (
    SELECT EMPLOYEE_ID
    FROM hr.employees
    WHERE EMAIL = search_email
  )
  INTO quantidade_de_empregos;
  RETURN quantidade_de_empregos;
END $$
DELIMITER ;
