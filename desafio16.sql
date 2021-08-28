-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco
--  de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade
--   de empregos presentes em seu histórico
USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_funcionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_amount INT;
SELECT COUNT(*) AS total_empregos
FROM hr.job_history as JH WHERE
JH.EMPLOYEE_ID = (
SELECT EMP.EMPLOYEE_ID
FROM hr.employees AS EMP
WHERE EMP.EMAIL LIKE CONCAT('%',email_funcionario,'%'))    
INTO total_amount;
RETURN total_amount;
END $$

DELIMITER ;

-- Como usar:

SELECT buscar_quantidade_de_empregos_por_funcionario  ("NKOCHHAR");
