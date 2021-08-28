USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN

SELECT
ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees
WHERE (
SELECT JOB_ID
FROM hr.jobs
WHERE JOB_TITLE = cargo) = JOB_ID;

END $$

DELIMITER ;
