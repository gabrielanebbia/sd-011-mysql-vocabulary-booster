-- 1 - Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa.
-- A primeira deve possuir o alias "País" e exibir o nome do país.
-- A segunda deve possuir o alias "Status Inclusão" e deve exibir "incluído"
--  se o país em questão está incluso em "Europe", ou "não incluído", caso contrário.
SELECT @countryID := REGION_ID from hr.regions WHERE REGION_NAME = 'Europe';

SELECT
c.COUNTRY_NAME AS 'País',
IF (c.REGION_ID = @countryID, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM
hr.countries as c
INNER JOIN hr.regions as r
ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME ASC;