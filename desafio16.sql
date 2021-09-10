DELIMITER $$

CREATE function buscar_quantidade_de_empregos_por_funcionario( email varchar(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtdEmprego INT;
SELECT COUNT(*)
from hr.job_history as JOB_HISTORY
INNER JOIN hr.employees as EMPLOYEES
on JOB_HISTORY.employee_id = EMPLOYEES.employee_id
where EMPLOYEES.email = email
INTO qtdEmprego;
return qtdEmprego;
END $$
DELIMITER;
