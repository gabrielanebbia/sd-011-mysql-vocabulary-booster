CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE people_quantity INT;
SELECT COUNT(*)
FROM hr.job_history AS j_h
WHERE MONTH(j_h.start_date) = mes AND YEAR(j_h.start_date) = ano
INTO people_quantity;
RETURN people_quantity;
END $$
