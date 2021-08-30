DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_contratados INT;
    SELECT COUNT(*)
    FROM hr.employees as t1
    WHERE month(t1.hire_date) = mes and year(t1.hire_date) = ano INTO total_contratados;
    RETURN total_contratados;
END $$

DELIMITER ;
