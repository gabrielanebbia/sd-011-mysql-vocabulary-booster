USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE  totalEmpregos INT;
    SELECT COUNT(jobh.EMPLOYEE_ID)
    FROM hr.employees AS emp, hr.job_history AS jobh
    WHERE emp.EMAIL = email AND emp.EMPLOYEE_ID = jobh.EMPLOYEE_ID
    GROUP BY jobh.EMPLOYEE_ID INTO totalEmpregos;
    RETURN totalEmpregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
