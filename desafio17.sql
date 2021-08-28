USE w3schools;
DELIMITER $$

CREATE TRIGGER set_current_date
    BEFORE INSERT ON w3schools.orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = CURDATE();
END $$
DELIMITER ;
