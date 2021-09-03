USE w3schools;

DELIMITER $$

CREATE TRIGGER trigger_new_order
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
    SET NEW.OrderDate = Now();
END $$

DELIMITER ;
