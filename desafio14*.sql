
SELECT Country AS 'País' FROM w3schools.customers
UNION
SELECT Country AS 'País' FROM w3schools.suppliers
LIMIT 5;

-- DÁ ERRO NO MOMENTO QUE COLOCO O ORDER BY, MAS ESTOU FAZENDO DA MANEIRA ENSINADA NO CURSO, TENTEI COLOCAR OUTRO SELECT MAS NÃO FUNCIONOU

Considerando o conjunto formado pelas pessoas consumidoras e empresas fornecedoras de produtos, queremos saber quais são os cinco primeiros países distintos, em ordem alfabética, presentes nesse conjunto
Exiba os 05 primeiros países distintos dentre as pessoas consumidoras e as empresas fornecedoras, em ordem alfabética.

Use o banco w3schools como referência

Monte uma query que exiba 01 coluna com o alias "País" contendo o nome do país.
