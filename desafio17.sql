CREATE TRIGGER w3schools.tgr_ins_orders BEFORE INSERT
ON w3schools.orders
FOR EACH ROW
SET NEW.OrderDate = CURRENT_DATE();
