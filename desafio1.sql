SELECT COUNTRY_NAME AS `País`,
IF(
(SELECT REGION_NAME
FROM hr.regions
WHERE REGION_ID = c.REGION_ID) = 'Europe',
'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries AS c
ORDER BY `País`;
