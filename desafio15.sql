DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
IN cargo VARCHAR(50),
OUT media DOUBLE
)
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM (
SELECT * FROM hr.jobs
WHERE JOB_TITLE = cargo
) INTO media;
END $$

DELIMITER ;
