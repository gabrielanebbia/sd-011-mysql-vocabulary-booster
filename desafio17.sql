USE w3schools
DELIMITER $$
CREATE TRIGGER trigger_orderdate_insert
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW());
END $$
DELIMITER ;
