DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS `Média Salarial`
  FROM employees AS E
  INNER JOIN jobs AS J ON E.JOB_ID = J.JOB_ID
  WHERE JOB_TITLE = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
