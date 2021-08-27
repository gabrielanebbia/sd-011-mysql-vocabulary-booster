DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailFuncionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos_no_historico INT;
SELECT COUNT(*) 
FROM hr.job_history J
INNER JOIN hr.employees E ON E.employee_id = J.employee_id
WHERE E.email = emailFuncionario
INTO empregos_no_historico;
RETURN empregos_no_historico;
END $$

DELIMITER ;
