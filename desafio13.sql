SELECT products.ProductName as 'Produto',
products.Price as 'Preço'
from w3schools.products as products
INNER JOIN w3schools.order_details as order_details
on order_details.ProductID = products.ProductID
where order_details.Quantity > 80
ORDER BY `Produto` ASC;
