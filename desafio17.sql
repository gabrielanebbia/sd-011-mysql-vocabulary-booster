SELECT w3schools;
DELIMITER $$

CREATE TRIGGER trigger_insert_current_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
