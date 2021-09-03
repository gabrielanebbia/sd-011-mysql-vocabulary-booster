USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(E.salary), 2) AS 'Média salarial'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.job_ID = J.job_ID
WHERE job = J.job_title;
END $$

DELIMITER ;
