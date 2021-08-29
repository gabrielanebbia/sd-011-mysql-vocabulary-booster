DELIMITER //
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees e
INNER JOIN hr.jobs j
ON e.JOB_ID = j.JOB_ID
WHERE cargo = j.JOB_TITLE;
END //
DELIMITER ;
