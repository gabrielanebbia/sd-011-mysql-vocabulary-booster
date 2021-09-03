DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(100))
BEGIN
SELECT
ROUND(AVG(salary), 2) AS `Média salarial`
FROM
hr.employees AS e
INNER JOIN
hr.jobs AS j
ON e.job_id = j.job_id
AND j.job_title = job;
END $$

DELIMITER ;