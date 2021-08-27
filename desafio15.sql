DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo()
BEGIN
    SELECT ROUND(MAX_SALARY - MIN_SALARY, 2) AS `Média salarial` FROM jobs;
END $$

DELIMITER ;
