-- DELIMITER $$

-- CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario (IN var_email VARCHAR(20))
-- BEGIN
-- SELECT COUNT(e.employee_id) AS 'total_empregos'
-- FROM hr.job_history j
-- INNER JOIN hr.employees e 
-- ON j.employee_id = e.employee_id
-- WHERE var_email = e.email;
-- END $$

-- DELIMITER ; 1ª tentativa, nao deu certo pois o retorno deve ser um array contendo um objeto e com a procedure acima o retorno nao era esse
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(var_email varchar(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(*)
FROM hr.job_history j
INNER JOIN hr.employees e 
ON j.employee_id = e.employee_id
WHERE var_email = e.email INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
