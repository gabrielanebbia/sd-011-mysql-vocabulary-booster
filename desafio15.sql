CREATE DEFINER=`lucas`@`localhost` PROCEDURE `buscar_media_por_cargo`(IN nomeDoCargo VARCHAR(50))
BEGIN
SELECT
ROUND(AVG(e.SALARY),2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.JOB_ID = e.JOB_ID
WHERE JOB_TITLE = nomeDoCargo;
END