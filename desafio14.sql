  select 
  DISTINCT(Country) AS 'País'
    FROM customers 
    UNION
    SELECT DISTINCT(Country) AS 'País'
    FROM suppliers
    ORDER BY `País` LIMIT 5;