DELIMITER $$

CREATE TRIGGER update_date_on_orderDate
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER $$ ;
