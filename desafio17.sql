CREATE TRIGGER w3schools.insert_order
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
SET NEW.OrderDate = NOW();
