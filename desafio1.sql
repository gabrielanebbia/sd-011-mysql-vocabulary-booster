SELECT COUNTRY_NAME, IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status inclusão' FROM hr.countries;