DELIMITER $$
CREATE TRIGGER adiciona_nova_data_de_pedido
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
INSERT INTO order_date (OrderDate)
VALUES (NEW.CustomerID, NEW.EmployeeID, NEW.ShipperID);
END $$
DELIMITER ;
