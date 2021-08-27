SELECT 
c.COUNTRY_NAME AS País,
CASE r.REGION_NAME WHEN "Europe" THEN "incluído" ELSE "não incluído" END AS "Status Inclusão"
FROM hr.countries c
INNER JOIN hr.regions r ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME ASC;
