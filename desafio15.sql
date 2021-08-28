DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.job_id
WHERE j.job_title LIKE cargo;
END $$
DELIMITER ;
