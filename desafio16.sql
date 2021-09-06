USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT
READS SQL DATA
BEGIN
DECLARE contagem INT;

SELECT 
COUNT(*) AS `Total`
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.employee_id = j.employee_id
AND e.email = email
INTO contagem;

RETURN contagem;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
