USE hr;
DELIMITER $$

CREATE PROCEDURE busca_media_por_cargo(IN cargo VARCHAR(50))
BEGIN 
SELECT ROUND(AVG(e.SALARY), 2)
FROM hr.employees AS e
INNER JOIN jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo;
END $$ 

DELIMITER ; 

CALL buscar_media_por_cargo('Programmer');
