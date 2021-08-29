SELECT t1.COUNTRY_NAME AS "País", IF(REGION_NAME = "Europe", "incluído", "não incluído") AS "Status Inclusão"
FROM countries AS t1
INNER JOIN regions AS t2
ON t1.REGION_ID = t2.REGION_ID
ORDER BY País ASC;
