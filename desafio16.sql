DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantity INT;
    SELECT COUNT(*) AS 'Quantidade de empregos'
    FROM job_history
    WHERE EMPLOYEE_ID = (
    SELECT EMPLOYEE_ID FROM employees AS E
    WHERE E.EMAIL = email)
    INTO quantity;
    RETURN quantity;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
