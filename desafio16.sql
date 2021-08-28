DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT COUNT(jh.JOB_ID) AS "Quantidade de Empregos"
    FROM
hr.job_history AS jh
        INNER JOIN
        hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        WHERE email = e.EMAIL;
END $$
DELIMITER ;
