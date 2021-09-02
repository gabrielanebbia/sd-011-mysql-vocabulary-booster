SELECT COUNTRY_NAME AS Paí­s, 
IF(REGION_ID = 1, 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries
ORDER BY COUNTRY_NAME ASC;
