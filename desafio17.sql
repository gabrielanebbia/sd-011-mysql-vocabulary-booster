DELIMITER $$
CREATE TRIGGER adiciona_nova_data_de_pedido
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.CustomerID = NEW.CustomerID,
    NEW.EmployeeID = NEW.EmployeeID,
    NEW.OrderDate = NOW(),
    NEW.ShipperID = NEW.ShipperID;
END $$
DELIMITER ;

INSERT INTO orders(CustomerID, EmployeeID, ShipperID) VALUES (4, 2, 2);
