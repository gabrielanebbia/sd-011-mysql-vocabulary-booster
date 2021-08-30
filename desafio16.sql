USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionarios(email VARCHAR(50))
RETURNS NUMERIC READS SQL DATA
BEGIN
DECLARE conta INT;
SELECT COUNT(e.EMPLOYEE_ID) AS total_empregos
FROM employees AS e
INNER JOIN job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE EMAIL = email INTO conta;
RETURN conta;
END $$

DELIMITER ;