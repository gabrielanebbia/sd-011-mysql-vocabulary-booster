USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS `Média salarial`
FROM hr.employees AS emp
INNER JOIN hr.jobs AS job
ON emp.JOB_ID = job.JOB_ID
WHERE job = job.JOB_TITLE;
END $$

DELIMITER ;
