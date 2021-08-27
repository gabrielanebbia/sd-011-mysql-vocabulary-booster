DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(job VARCHAR(200))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = job;
END $$
DELIMITER ;
