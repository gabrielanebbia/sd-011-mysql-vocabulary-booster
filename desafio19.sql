USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT reads sql data
BEGIN
DECLARE hirings_total int;
SELECT COUNT(*)
FROM hr.employees
where month(hire_date) = mes and year(hire_date) = ano
INTO hirings_total;
RETURN hirings_total;
END $$
DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS total;
