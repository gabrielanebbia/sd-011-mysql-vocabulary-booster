DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT
(
SELECT ROUND(AVG(SALARY), 2) FROM hr.employees WHERE hr.employees.JOB_ID = t2.JOB_ID
) AS 'Média salarial'
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
WHERE t2.JOB_TITLE = cargo
GROUP BY `Média salarial`;
 END $$
DELIMITER ;
