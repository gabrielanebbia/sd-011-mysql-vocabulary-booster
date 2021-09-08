DELIMITER $$

CREATE TRIGGER add_Order_Date
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
    SET NEW.OrderDate = DATE(now());
END $$

DELIMITER $$ ;
