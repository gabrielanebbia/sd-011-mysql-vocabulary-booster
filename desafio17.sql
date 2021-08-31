DELIMITER $$
CREATE TRIGGER on_insert_add_order_date
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET
NEW.OrderDate = NOW();
END $$
DELIMITER;
