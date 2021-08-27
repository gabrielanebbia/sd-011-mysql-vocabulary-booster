DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(80))
BEGIN
SELECT ROUND(AVG(E.salary), 2) AS 'Média salarial' 
FROM hr.employees E
INNER JOIN hr.jobs J ON J.JOB_ID = E.JOB_ID
WHERE J.JOB_TITLE = cargo;
END $$

DELIMITER ;
