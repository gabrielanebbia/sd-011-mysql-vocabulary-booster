DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
select count(t1.employee_id)
from hr.job_history as t1
inner join hr.employees as t2
on t1.employee_id = t2.employee_id and t2.email = email
INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
