SELECT COUNTRY_NAME AS 'Counrty', IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries ORDER BY 'Country';
