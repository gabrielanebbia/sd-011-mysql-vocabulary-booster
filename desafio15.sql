USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT 
ROUND(AVG(em.SALARY), 2) AS 'Média salarial'
FROM jobs jo
INNER JOIN employees em
ON jo.JOB_ID = em.JOB_ID
WHERE jo.JOB_TITLE LIKE CONCAT('%', cargo, '%');
END $$

DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
