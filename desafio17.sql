USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_perfil_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    INSERT INTO orders(CustomerID, EmployeeID, ShipperID)
    VALUES(4, 2, 2)
END $
DELIMITER ;

SELECT CustomerID FROM w3schools.orders
WHERE CustomerID = 4;
