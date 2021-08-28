DELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(300))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM
hr.employees AS e
INNER JOIN
hr.jobs AS j
ON
e.JOB_ID = j.JOB_ID
WHERE JOB_TITLE = jobTitle;
END $$ 

DELIMITER ;
