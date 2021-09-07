USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(100))
BEGIN
	SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM hr.jobs j
INNER JOIN hr.employees e ON e.JOB_ID = j.JOB_ID
WHERE JOB_TITLE = nome_cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
