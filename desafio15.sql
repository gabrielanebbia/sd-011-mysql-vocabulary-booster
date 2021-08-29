USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))

BEGIN
  SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
  FROM hr.employees AS e
  WHERE JOB_ID IN (
    SELECT j.JOB_ID
    FROM hr.jobs AS j
    WHERE j.JOB_TITLE = cargo
  )
  GROUP BY e.JOB_ID;
END$$

DELIMITER ;
