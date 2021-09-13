DELIMITER $$

CREATE TRIGGER insert_date_on_order_date
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
