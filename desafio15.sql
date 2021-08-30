DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_name VARCHAR(300))
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS e
    INNER JOIN hr.jobs AS j
    ON j.JOB_ID = e.JOB_ID
    WHERE j.JOB_TITLE = job_name;
END $$

DELIMITER ;
