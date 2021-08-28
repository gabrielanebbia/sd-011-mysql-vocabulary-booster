DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(func_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_emprego INT;
SELECT COUNT(j.EMPLOYEE_ID) FROM hr.job_history AS j
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = func_email INTO qtd_emprego;
RETURN qtd_emprego;
END $$

DELIMITER ;
