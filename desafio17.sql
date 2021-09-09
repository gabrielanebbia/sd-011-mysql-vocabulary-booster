CREATE TRIGGER trigger_on_insert
BEFORE INSERT ON hr.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
