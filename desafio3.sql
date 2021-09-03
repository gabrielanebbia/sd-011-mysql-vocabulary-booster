SELECT JOB_TITLE AS 'Cargo',
 (MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC,
 JOB_TITLE ASC;

-- Artigo de apoio: https://www.w3schools.com/mysql/mysql_operators.asp (Tabelas marotas sobre operadores de todas as categorias);  
