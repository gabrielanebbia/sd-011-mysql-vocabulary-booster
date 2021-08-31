USE w3schools;
DELIMITER $$
CREATE TRIGGER insere_data_atual
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    INSERT INTO orders (OrderDate)
    VALUES(GETDATE());
END $$
DELIMITER $$ ;
