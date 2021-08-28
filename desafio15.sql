ELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo(INOUT jobTitle VARCHAR(300))
BEGIN
SET jobTitle = (SELECT AVG(SALARY)
FROM
hr.employees AS e
INNER JOIN
hr.jobs AS j
ON
e.JOB_ID = j.JOB_ID
WHERE JOB_TITLE = jobTitle);
END $$ 

DELIMITER ;
