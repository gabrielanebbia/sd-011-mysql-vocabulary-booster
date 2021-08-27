SELECT COUNTRY_NAME AS 'País', REGION_ID AS 'Status Inclusão',
CASE
	WHEN REGION_ID = 1 THEN 'incluído'
    ELSE 'não incluído'
END
FROM hr.countries;