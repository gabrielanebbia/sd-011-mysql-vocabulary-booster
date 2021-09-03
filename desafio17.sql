use w3schools;

DELIMITER $$
CREATE TRIGGER trigger_orders_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.orderdate = now();
END $$

DELIMITER ;
