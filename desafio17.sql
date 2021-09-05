USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_orders_update
    BEFORE UPDATE ON orders
    FOR EACH ROW
BEGIN
    INSERT INTO orders(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
    VALUES(NEW.OrderID, NEW.CustomerID, NEW.EmployeeID, NEW.OrderDate = DATE(NOW()), NEW.ShipperID);
END $$

DELIMITER ;
