SELECT JOB_TITLE AS 'Cargo',
CASE
  WHEN MAX_SALARY >= 5000 AND MAX_SALARY <= 10000 THEN 'Baixo'
  WHEN MAX_SALARY >= 10001 AND MAX_SALARY <= 20000 THEN 'Médio'
  WHEN MAX_SALARY >= 20001 AND MAX_SALARY <= 30000 THEN 'Alto'
  WHEN MAX_SALARY >= 30000 THEN 'Altíssimo'
END AS 'Nível'
FROM jobs
ORDER BY JOB_TITLE ASC;

-- Artigo de apoio: https://www.w3schools.com/mysql/func_mysql_case.asp
