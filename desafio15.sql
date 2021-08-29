DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN average_job VARCHAR(30))
BEGIN
SELECT ROUND(AVG(employees.SALARY), 2) AS "Média salarial"
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
GROUP BY jobs.JOB_TITLE
HAVING jobs.JOB_TITLE = average_job;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
