USE hr;
DELIMITER $$
CREATE PROCEDURE `buscar_media_por_cargo` (IN JobName VARCHAR(10))
BEGIN
    SELECT ROUND(AVG(SALARY), 2)
    FROM hr.employees
    WHERE employees.JOB_ID = (
		SELECT JOB_ID FROM hr.jobs WHERE jobs.JOB_TITLE = JobName
    );
END $$
DELIMITER ;