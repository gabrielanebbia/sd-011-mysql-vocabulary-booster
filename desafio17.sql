DELIMITER $$

CREATE TRIGGER insert_order_time
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = now();
END $$

DELIMITER ;
