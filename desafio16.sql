USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_jobies INT;
SELECT COUNT(*) FROM job_history AS JH
INNER JOIN employees AS EMP
ON JH.EMPLOYEE_ID = EMP.EMPLOYEE_ID
WHERE EMP.EMAIL = employee
GROUP BY JH.EMPLOYEE_ID
INTO total_jobies
;
    RETURN total_jobies;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
