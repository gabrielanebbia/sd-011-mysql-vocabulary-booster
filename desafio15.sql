USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30))
BEGIN 
SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS emp
    INNER JOIN
    hr.jobs AS jb
WHERE
    emp.JOB_ID = jb.JOB_ID AND jb.JOB_TITLE = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
