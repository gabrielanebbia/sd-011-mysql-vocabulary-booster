DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(monthOfStart INT, yearOfStart INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE numberOfHiredPeople INT;
    SELECT COUNT(JH.EMPLOYEE_ID) 
    FROM hr.job_history AS JH
    WHERE MONTH(JH.START_DATE) = monthOfStart AND YEAR(JH.START_DATE) = yearOfStart
    INTO numberOfHiredPeople;
    RETURN numberOfHiredPeople;
END $$
DELIMITER ;