USE hr;
DELIMITER $

CREATE PROCEDURE buscar_media_por_cargo(IN pcargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(a.SALARY), 2) AS `Média salarial`
FROM hr.employees AS a 
INNER JOIN hr.jobs AS b
ON a.JOB_ID = b.JOB_ID
WHERE b.JOB_TITLE = pcargo;
END$
DELIMITER ;
