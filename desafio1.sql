SELECT COUNTRY_NAME AS País,
CASE 
WHEN REGION_ID = 1 THEN 'Incluído'
ELSE 'não incluído'
END AS `Status Inclusão`
FROM countries;
