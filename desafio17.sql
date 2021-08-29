USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_orders_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END $
DELIMITER ;

SELECT CustomerID FROM w3schools.orders
WHERE CustomerID = 4;
