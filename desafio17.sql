DELIMITER $$

CREATE TRIGGER add_Order_Date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    SET NEW.OrderDate = DATE(now());
END $$

DELIMITER $$ ;
