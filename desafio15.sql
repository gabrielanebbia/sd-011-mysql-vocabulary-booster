DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(funcionarios.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS funcionarios
INNER JOIN hr.jobs AS cargos ON cargos.JOB_ID = funcionarios.JOB_ID
WHERE cargo = cargos.JOB_TITLE;
END $$

DELIMITER ;
