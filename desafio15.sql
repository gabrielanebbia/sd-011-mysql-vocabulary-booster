DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN input_cargo VARCHAR(200))
BEGIN
SELECT 
    ROUND(AVG(employees.SALARY), 2) AS "Média salarial"
    FROM hr.employees AS employees
    INNER JOIN hr.jobs AS jobs
    ON jobs.JOB_TITLE = input_cargo
    WHERE jobs.JOB_ID = employees.JOB_ID;
END $$

DELIMITER ;
