USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN 
SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
WHERE job = J.JOB_TITLE;
END $$

DELIMITER ;
