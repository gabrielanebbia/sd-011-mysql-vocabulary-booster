USE hr; -- obrigatório para criar a função no banco correto
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE JobsTotal INT;

SELECT COUNT(jobh.JOB_ID)
FROM hr.employees AS emp

INNER JOIN
hr.job_history AS jobh ON emp.EMPLOYEE_ID = jobh.EMPLOYEE_ID

WHERE emp.EMAIL = email INTO JobsTotal;
    RETURN JobsTotal;

END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
-- Como usar:


-- cool articles: https://www.techonthenet.com/mysql/union.php
