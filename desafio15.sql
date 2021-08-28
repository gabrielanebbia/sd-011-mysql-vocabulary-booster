DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(E.SALARY), 2) AS `Média salarial`
    FROM hr.employees AS E
    WHERE E.JOB_ID IN (SELECT J.JOB_ID FROM hr.jobs AS J WHERE J.JOB_TITLE = jobTitle);
END $$
DELIMITER ;
