USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial' FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE JOB_TITLE = nome_do_cargo
GROUP BY JOB_TITLE;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
