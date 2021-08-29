USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(numberEmployees VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE TEST INT;
SELECT COUNT(EMAIL) INTO TEST
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE EMAIL = numberEmployees;
RETURN TEST;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
