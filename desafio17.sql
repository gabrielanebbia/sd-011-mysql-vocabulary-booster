DELIMITER $$

CREATE TRIGGER orders
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
    -- o código SQL entra aqui
END $$
