USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN average VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY)) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id
WHERE j.JOB_TITLE = 'Programmer';
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
