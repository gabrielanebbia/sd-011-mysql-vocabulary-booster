SELECT COUNTRY_NAME AS País,
IF(REGION_ID = 1, 'inluído', 'não incluído') AS 'Status'
FROM hr.countries;
