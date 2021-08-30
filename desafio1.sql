SELECT COUNTRY_NAME AS País,
CASE
WHEN REGION_ID = (
SELECT REGION_ID FROM hr.regions WHERE REGION_NAME = "Europe")
THEN 'incluído'
ELSE 'não incluído'
END AS 'Status Inclusão'
FROM hr.countries;
