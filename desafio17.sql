DELIMITER $$

CREATE TRIGGER nome_do_trigger
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
