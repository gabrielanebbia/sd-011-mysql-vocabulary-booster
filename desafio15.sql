CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(150))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS `Média salarial` FROM hr.employees emp
WHERE emp.JOB_ID IN (
SELECT jobs.JOB_ID FROM hr.jobs
WHERE jobs.JOB_TITLE = cargo
);
END $$

DELIMITER ;
