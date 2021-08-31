USE hr;
DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN nomeCargo VARCHAR(100))
BEGIN
SELECT
ROUND(AVG(E.SALARY), 2) AS `Média salarial`
FROM hr.employees AS E
LEFT JOIN hr.jobs as J
ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = nomeCargo
GROUP BY E.JOB_ID;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
