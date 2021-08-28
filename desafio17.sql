DELIMITER $$
CREATE TRIGGER trigger_order_insert
BEFORE INSERT ON w3chools.orders
FOR EACH ROW
BEGIN
	SET NEW.OrderDtate = CURRENT_DATE();
END $$
DELIMITER ;
