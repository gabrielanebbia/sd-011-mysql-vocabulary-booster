SELECT
CONCAT(E.FirstName, " " ,E.LastName) AS "Nome Completo"
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E
ON E.EmployeeID = O.EmployeeID
WHERE O.CustomerID = E.EmployeeID;
