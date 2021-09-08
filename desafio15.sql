USE hr; 
DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo( IN cargo VARCHAR(50)) 
BEGIN 
SELECT ROUND(AVG(e.SALARY), 2) `Média salarial`
FROM hr.employees e 
WHERE e.JOB_ID IN (SELECT jobs.JOB_ID FROM hr.jobs WHERE jobs.JOB_TITLE = cargo);
END $$ 

DELIMITER ;
