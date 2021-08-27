SELECT 
    COUNTRY
FROM
    w3schools.customers 
UNION SELECT 
    COUNTRY
FROM
    w3schools.suppliers
ORDER BY COUNTRY
LIMIT 5;
