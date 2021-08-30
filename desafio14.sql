SELECT DISTINCT
  Country AS 'País'
  FROM
  (
    SELECT Country FROM suppliers
    UNION ALL
    SELECT Country FROM customers
  ) AS all_countries
ORDER BY
  Country ASC
LIMIT 5;
