USE banco_de_dados; 
DELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100) , OUT média_salarial VARCHAR(100)) 
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) AS "Média salarial"
FROM hr.employees e 
INNER JOIN hr.jobs j 
ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = cargo;
END $$ 

DELIMITER ; 
