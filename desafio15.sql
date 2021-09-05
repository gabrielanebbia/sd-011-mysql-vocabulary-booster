DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN position VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial` 
FROM employees AS e
INNER JOIN jobs AS j
ON e.JOB_ID = j.JOB_ID
AND j.JOB_TITLE = position;
END $$
DELIMITER ;
