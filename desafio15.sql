DELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo(
IN jobTitle VARCHAR(300), OUT avgSalary DOUBLE)
BEGIN
SELECT AVG(SALARY) INTO avgSalary
FROM
hr.employees AS e
INNER JOIN
hr.jobs AS j
ON
e.JOB_ID = j.JOB_ID
WHERE JOB_TITLE = jobTitle;
END $$ 

DELIMITER ;
