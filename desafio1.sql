SELECT COUNTRY_NAME 'País', (
SELECT IF (REGION_NAME = 'Europe', 'incluído', 'não incluído')
FROM hr.regions
WHERE hr.countries.REGION_ID = hr.regions.REGION_ID
) AS 'Status Inclusão'
FROM hr.countries;
