-- Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa
-- Crie uma query que mostre se o país pertence ou não à região "Europe".
SELECT COUNTRY_NAME, 
IF(REGION_ID = 1,"incluído","não incluído") AS "Status Inclusão"
FROM hr.countries
ORDER BY COUNTRY_NAME;
