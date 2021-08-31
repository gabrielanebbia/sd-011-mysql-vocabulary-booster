SELECT COUNTRY_NAME AS País, IF(REGION_ID = 1, "incluído", "não incluído" ) AS "Status Inclusão" from countries ORDER BY COUNTRY_NAME;
