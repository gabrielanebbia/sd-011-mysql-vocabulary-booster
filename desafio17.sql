CREATE TRIGGER trigger_on_insert
BEFORE INSERT ON hr.orders
FOR EACH ROW
BEGIN
INSERT INTO hr.orders(OrderDate)
VALUES (NOW());
END $$
