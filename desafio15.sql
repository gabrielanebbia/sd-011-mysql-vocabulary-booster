DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo
(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(E.salary), 2) AS 'Média salarial'
FROM hr.employees AS E
INNER JOIN
hr.jobs AS J
ON E.job_id = J.job_id
WHERE cargo = J.job_title;
END $$ 
DELIMITER ;
