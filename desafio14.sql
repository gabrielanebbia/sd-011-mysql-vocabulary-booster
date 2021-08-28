-- 14 - Considerando o conjunto formado pelas pessoas consumidoras e empresas 
-- fornecedoras de produtos, queremos saber quais são os cinco primeiros países 
-- distintos, em ordem alfabética, presentes nesse conjunto
SELECT 
DISTINCT C.Country AS 'País'
FROM w3schools.customers as C
UNION
SELECT 
DISTINCT S.COUNTRY AS 'País'
FROM w3schools.suppliers as S
ORDER BY `País` ASC
LIMIT 5;
