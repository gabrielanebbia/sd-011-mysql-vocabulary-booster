SELECT COUNTRY_NAME AS 'País',
IF(REGION_ID = 1, 'Incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries ORDER BY COUNTRY_NAME;