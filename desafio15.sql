USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN role VARCHAR(20))
BEGIN
SELECT
ROUND(AVG(e.Salary), 2) AS 'Média Salarial'
FROM hr.employees e
INNER JOIN hr.jobs j
ON j.job_id = e.job_id
WHERE j.job_title = role;
END $$
DELIMITER ;
