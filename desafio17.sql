USE w3schools;
DELIMITER $$
CREATE TRIGGER trigger_OrderDate_insert
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = Date( NOW());
END $$

DELIMITER ;
