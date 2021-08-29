USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN jobs VARCHAR(100))
BEGIN
SELECT ROUND(AVG(med.SALARY), 2) AS `Média salarial`
FROM hr.employees AS med
INNER JOIN
hr.employees AS B ON B.JOB_ID = med.JOB_ID
INNER JOIN
hr.jobs AS job ON job.JOB_ID = med.JOB_ID
WHERE job.JOB_TITLE = jobs
GROUP BY med.JOB_ID;
END $$
DELIMITER ;
