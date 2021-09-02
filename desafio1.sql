SELECT
COUNTRY_NAME AS 'País',
(
SELECT
IF(regions .REGION_NAME = 'Europe', 'incluído', 'não incluído')
FROM
regions 
WHERE
regions .REGION_ID = countries.REGION_ID
) AS 'Status Inclusão'
FROM
countries 
ORDER BY
COUNTRY_NAME ASC;
