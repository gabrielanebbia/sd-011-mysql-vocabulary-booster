DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_people_quantity INT;
SELECT COUNT(*)
FROM
hr.employees AS empls
WHERE
MONTH(empls.HIRE_DATE) = mes AND
YEAR(empls.HIRE_DATE) = ano INTO hired_people_quantity;
RETURN hired_people_quantity;
END $$
DELIMITER ;
