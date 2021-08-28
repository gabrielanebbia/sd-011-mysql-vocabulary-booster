#Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, 
#ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
#Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, 
#retorne a quantidade de empregos presentes em seu histórico.
#Use o banco hr como referência
#Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE JobsQty INT;
SELECT COUNT(jh.EMPLOYEE_ID) 
FROM hr.job_history AS jh
INNER JOIN employees as e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO JobsQty;
RETURN JobsQty;
END$$

DELIMITER ;

