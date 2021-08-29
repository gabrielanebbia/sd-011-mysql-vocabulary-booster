USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_dateNow_before_insert
    BEFORE INSERT ON w3schools.orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END $$
DELIMITER ;
