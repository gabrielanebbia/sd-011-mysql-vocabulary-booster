#Crie uma query que mostre se o país pertence ou não à região "Europe".
#Use o banco hr como referência
#Seu relatório deve apresentar 02 colunas:
#A primeira deve possuir o alias "País" e exibir o nome do país.
#A segunda deve possuir o alias "Status Inclusão" e deve exibir "incluído" se o país em questão está incluso em "Europe", ou "não incluído", caso contrário.
#Os resultados devem estar ordenados pelo nome do país em ordem alfabética.
SELECT c.COUNTRY_NAME as País, ( 
IF ((SELECT REGION_ID FROM hr.regions WHERE hr.regions.REGION_ID = c.REGION_ID) = 1, "incluído", "não incluído"))
AS "Status Inclusão" FROM hr.countries AS c
INNER JOIN hr.regions as r
ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME ASC;
