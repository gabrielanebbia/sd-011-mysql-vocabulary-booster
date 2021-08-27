USE w3schools;
DELIMITER $$

CREATE TRIGGER order_details_insert
BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
