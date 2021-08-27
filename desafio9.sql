SELECT
CONCAT(EMP.FirstName, ' ', EMP.LastName) `Nome completo`,
COUNT(O.OrderID) `Total de pedidos`
FROM employees EMP
INNER JOIN orders O
ON EMP.EmployeeID = O.EmployeeID
GROUP BY CONCAT(EMP.FirstName, ' ', EMP.LastName) ORDER BY COUNT(O.OrderID);
