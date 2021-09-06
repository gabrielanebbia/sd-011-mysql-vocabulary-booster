DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(he.SALARY), 2) AS 'Média salarial'
  FROM hr.employees AS he
  INNER JOIN hr.jobs AS hj
  ON he.JOB_ID = hj.JOB_ID
  WHERE hj.JOB_TITLE = cargo;
END $$
DELIMITER ;
