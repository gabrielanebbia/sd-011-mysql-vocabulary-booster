SELECT
		c.contactName AS `Nome de contato`,
		s.shipperName AS `Empresa que fez o envio`,
		o.orderDate AS `Data do pedido`
FROM
		w3schools.orders as o
INNER JOIN
		w3schools.shippers as s
				ON s.shipperId = o.shipperId
INNER JOIN
		w3schools.customers AS c
				ON c.customerId = o.customerId
				AND s.shipperName IN (
						'Speedy Express',
				'United Package')
		ORDER BY
				`Nome de contato`,
				`Empresa que fez o envio`,
				`Data do pedido`;
