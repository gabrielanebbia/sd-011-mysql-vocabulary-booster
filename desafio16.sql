DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_func VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE historico_funcionario INT;
SELECT COUNT(*)
FROM job_history
WHERE EMPLOYEE_ID IN (
SELECT EMPLOYEE_ID 
FROM employees
WHERE EMAIL = email_func
)   
INTO historico_funcionario;
RETURN historico_funcionario;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
