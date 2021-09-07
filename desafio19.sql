DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtda_pessoa_contratada_mes_ano INT;
SET qtda_pessoa_contratada_mes_ano = 0;
SELECT COUNT(*)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
INTO qtda_pessoa_contratada_mes_ano;
RETURN qtda_pessoa_contratada_mes_ano;
END $$
DELIMITER ;
