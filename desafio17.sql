USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_orders_update
    BEFORE UPDATE ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = CURDATE();
END $$

DELIMITER ;
