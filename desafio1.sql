SELECT co.COUNTRY_NAME AS País, 
IF (REGION_NAME = 'Europe' ,"incluído", "não incluído") AS 'Status Inclusão' 
FROM hr.countries co
INNER JOIN hr.regions re
ON co.REGION_ID = re.REGION_ID
ORDER BY COUNTRY_NAME;
