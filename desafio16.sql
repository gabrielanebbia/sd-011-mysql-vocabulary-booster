USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE TOTAL SMALLINT;
SELECT COUNT(emp.EMAIL) FROM jbhist.employees AS emp
INNER JOIN jbhist.job_history AS jbhist
ON emp.EMPLOYEE_ID = jbhist.EMPLOYEE_ID
WHERE EMAIL = emp.EMAIL
INTO TOTAL;
RETURN TOTAL;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');