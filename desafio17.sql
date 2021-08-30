USE w3schools;
DELIMITER $$
CREATE TRIGGER ins_date_order
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.orderDate= current_date();
END $$
DELIMITER ;
