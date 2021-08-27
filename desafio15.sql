USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(SALARY), 2)  AS "Média salarial" FROM employees AS EMP
  INNER JOIN jobs AS JO
  ON JO.JOB_ID = EMP.JOB_ID
  WHERE JOB_TITLE = job;
  
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
