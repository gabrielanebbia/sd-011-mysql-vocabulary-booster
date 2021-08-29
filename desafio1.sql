SELECT COUNTRY_NAME AS País,
CASE
WHEN REGION_ID = 1 THEN 'incluído'
WHEN REGION_ID != 1 THEN 'não incluído'
ELSE REGION_ID = 'Não tem'
END AS 'Status Inclusão'
FROM hr.countries;
