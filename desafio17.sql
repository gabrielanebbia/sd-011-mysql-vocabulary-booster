USE w3schools;

SELECT * FROM orders;

DELIMITER $$

CREATE TRIGGER on_insert_add_order_date
  BEFORE INSERT ON orders
  FOR EACH ROW
BEGIN
  SET
    NEW.OrderDate = NOW();
END $$

DELIMITER ;
