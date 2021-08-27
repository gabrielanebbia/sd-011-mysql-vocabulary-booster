SELECT t1.COUNTRY_NAME as 'País', IF(t2.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries as t1
INNER JOIN hr.regions as t2
ON t1.REGION_ID = t2.REGION_ID
ORDER BY t1.COUNTRY_NAME;
