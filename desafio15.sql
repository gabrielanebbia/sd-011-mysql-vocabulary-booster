DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(a.SALARY), 2) AS "Média salarial" FROM employees AS a
    INNER JOIN jobs AS b
    ON a.JOB_ID = b.JOB_ID    
    WHERE b.JOB_TITLE = cargo
    GROUP BY b.JOB_TITLE;
END $$

DELIMITER ;
