USE w3schools;
DELIMITER $$
CREATE TRIGGER inserindo_data_atual_cada_nova_insercao
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW());
END $$
DELIMITER ;
