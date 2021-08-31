USE sakila;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(150))
RETURNS VARCHAR(200) READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT
COUNT(JH.JOB_ID) AS 'total_empregos'
FROM hr.job_history AS JH
LEFT JOIN hr.employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email
GROUP BY JH.EMPLOYEE_ID
INTO total_empregos ;
RETURN total_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
