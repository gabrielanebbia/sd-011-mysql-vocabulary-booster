SELECT COUNTRY_NAME AS País, IF (REGION_ID LIKE 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY País ASC;
