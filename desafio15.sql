USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN getTitle VARCHAR(100))
BEGIN
SELECT ROUND(AVG(s.SALARY), 2) AS 'Média salarial' 
FROM employees AS s
LEFT JOIN hr.jobs AS t
ON s.JOB_ID = t.JOB_ID
WHERE t.JOB_TITLE = getTitle
GROUP BY s.JOB_ID;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
