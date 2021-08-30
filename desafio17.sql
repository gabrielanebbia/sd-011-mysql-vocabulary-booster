SELECT * FROM orders; -- OrderDate
USE w3schools;
DELIMITER $$

CREATE TRIGGER data_atual_insert
	BEFORE INSERT ON orders
	FOR EACH ROW
BEGIN
     SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
