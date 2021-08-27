SELECT COUNTRY_NAME AS 'País',
IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Satus Inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME ASC;
