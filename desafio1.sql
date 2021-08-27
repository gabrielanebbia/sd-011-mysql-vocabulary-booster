SELECT cntrs.COUNTRY_NAME AS 'País', IF(regs.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS cntrs
INNER JOIN hr.regions AS regs
ON regs.REGION_ID = cntrs.REGION_ID
ORDER BY cntrs.COUNTRY_NAME;
