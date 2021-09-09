CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE people_quantity INT;
		SELECT COUNT(*)
		FROM hr.employees AS e
        WHERE MONTH(e.hire_date) = mes AND YEAR(e.hire_date) = ano
		INTO people_quantity;
    RETURN people_quantity;
END $$

DELIMITER ;
