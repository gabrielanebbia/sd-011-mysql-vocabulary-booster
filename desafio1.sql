-- Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa
-- Crie uma query que mostre se o país pertence ou não à região "Europe".
SELECT country_name AS 'Pais', 
IF(region_id = 1,'incluído','não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY country_name;
