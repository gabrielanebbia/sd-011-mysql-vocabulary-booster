DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(50))
BEGIN
    SELECT ROUND(AVG(SALARY), 2) as 'Média salarial'
    FROM hr.employees AS e
    inner join hr.jobs as j
    on e.JOB_ID = j.JOB_ID
    where j.JOB_TITLE = Cargo;
END $$

DELIMITER ;
