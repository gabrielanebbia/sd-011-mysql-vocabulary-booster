USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS j
ON j.JOB_ID = emp.JOB_ID
WHERE j.JOB_TITLE = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
