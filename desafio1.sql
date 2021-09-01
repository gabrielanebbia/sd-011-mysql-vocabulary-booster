SELECT
country_name AS `País`,
IF (c.region_id = '1',
'incluído',
'não incluído') AS `Status Inclusão` 
FROM
hr.countries AS c
ORDER BY
`País`;
