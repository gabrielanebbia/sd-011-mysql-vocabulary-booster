DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100)) RETURNS INT Reads SQL Data BEGIN DECLARE total_empregos INT; SELECT COUNT(t2.EMPLOYEE_ID) FROM hr.employees AS t1 INNER JOIN hr.job_history AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID WHERE t1.EMAIL=email INTO total_empregos; RETURN total_empregos; END $$ 
DELIMITER ;
