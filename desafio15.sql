USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(200))
BEGIN
	SELECT ROUND(AVG(E.salary), 2) AS 'Média salarial'
    FROM hr.employees AS E
	INNER JOIN hr.jobs AS J ON J.JOB_ID = E.JOB_ID
	WHERE J.JOB_TITLE = cargo;
END $$

DELIMITER ;
