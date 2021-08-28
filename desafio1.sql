SELECT c.COUNTRY_NAME AS 'País',
IF(c.REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries c
ORDER BY COUNTRY_NAME;
