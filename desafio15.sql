DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
IN job_title VARCHAR(100)
)
BEGIN
SELECT ROUND(AVG(EMP.SALARY), 2) `Média salarial`
FROM employees EMP
INNER JOIN jobs J
ON EMP.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = job_title;
END $$

DELIMITER ;
