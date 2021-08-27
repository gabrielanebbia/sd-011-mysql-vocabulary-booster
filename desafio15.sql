DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN jobName VARCHAR(150))
BEGIN
SELECT 
AVG(empl.SALARY) AS 'Média salarial'
FROM
hr.jobs AS j
INNER JOIN
hr.employees AS empl ON j.JOB_ID = empl.JOB_ID
WHERE j.JOB_TITLE = jobName;
END $$
DELIMITER ;
