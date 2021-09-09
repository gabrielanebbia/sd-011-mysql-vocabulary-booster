DELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR (40)) 
BEGIN
SELECT round(avg(SALARY), 2) as 'Média salarial'
FROM hr.employees AS em
  INNER JOIN hr.jobs AS jb 
  ON jb.JOB_ID = em.JOB_ID
WHERE jb.JOB_TITLE = cargo;
END $$ 
DELIMITER ;
