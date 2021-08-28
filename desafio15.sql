USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
FROM hr.employees E
WHERE (
SELECT JOB_ID
FROM hr.jobs
WHERE job = JOB_TITLE
) = E.JOB_ID;
END $$

DELIMITER ;
