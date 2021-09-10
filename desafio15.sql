USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(JOB VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(SALARY),2) AS 'Média salarial'
    FROM hr.employees AS emps
    INNER JOIN hr.jobs AS job
    ON emps.JOB_ID = job.JOB_ID
    WHERE job = job.JOB_TITLE;
END $$

DELIMITER ;
-- Como usar:


-- cool articles: https://www.techonthenet.com/mysql/union.php
