-- 17 - Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders, insira 
-- automaticamente a data atual na coluna OrderDate

USE w3schools;
DELIMITER $$
CREATE TRIGGER orders_trigger
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
DELIMITER ;


INSERT INTO w3schools.orders(CustomerID, EmployeeID, ShipperID)VALUES(4,2,2);
