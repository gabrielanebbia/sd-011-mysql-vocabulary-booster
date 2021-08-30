SELECT ct.COUNTRY_NAME AS 'País', IF (ct.REGION_ID = rg.REGION_ID, rg.REGION_NAME, 'Não incluído')as 'Status Inclusão'
FROM hr.countries as ct
LEFT JOIN hr.regions as rg
ON ct.REGION_ID = rg.REGION_ID AND ct.REGION_ID = 1
ORDER BY ct.COUNTRY_NAME;