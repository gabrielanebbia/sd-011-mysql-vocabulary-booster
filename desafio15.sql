DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(60))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS `Média salarial`
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jo
ON jo.JOB_ID = emp.JOB_ID
AND jo.JOB_TITLE = cargo;
END $$
DELIMITER ;
