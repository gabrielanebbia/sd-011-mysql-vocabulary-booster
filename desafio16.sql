DELIMITER //
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (
emailFuncionario VARCHAR(255) )
RETURNS INT DETERMINISTIC
BEGIN
DECLARE retorno INT;
SET retorno = 0;
SELECT
COUNT(jh.EMPLOYEE_ID) INTO retorno
FROM hr.employees e
INNER JOIN hr.job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = emailFuncionario
GROUP BY e.EMPLOYEE_ID;
RETURN retorno;
END //
