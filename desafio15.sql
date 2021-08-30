USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média Salarial'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jbs
ON jbs.JOB_ID = emp.JOB_ID
WHERE JOB_TITLE = cargo
GROUP BY JOB_TITLE ASC;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
