SELECT * FROM orders;

DELIMITER $$

CREATE TRIGGER inserir_automaticamente_data_atual
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW(),
END $$

DELIMITER ;
