USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE data_contratacao INT;
SELECT
COUNT(*)
FROM employees
WHERE mes = MONTH(HIRE_DATE) AND ano = YEAR(HIRE_DATE)
    INTO data_contratacao;
    RETURN data_contratacao;
END $$

DELIMITER $$;

SELECT EXIBIR_QUANTIDADE_PESSOAS_CONTRATADAS_POR_MES_E_ANO(6, 1987);
