DELIMITER $$
CREATE TRIGGER tr_adiciona_data BEFORE INSERT
ON w3schools.orders
FOR EACH ROW
BEGIN
SET new.OrderDate  = NOW();
END $$
DELIMITER $$ ;
