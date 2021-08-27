SELECT JOB_TITLE AS "Cargo", 
CASE WHEN  MAX_SALARY >= 5000 AND MAX_SALARY<= 10000 then 'Baixo'
WHEN  MAX_SALARY >= 10001 AND MAX_SALARY<= 20000 then 'Médio'
WHEN  MAX_SALARY >= 20001 AND MAX_SALARY<= 30000 then 'Alto' 
WHEN  MAX_SALARY > 30000 then 'Altíssimo'
END as "Nível" FROM hr.jobs 
ORDER BY JOB_TITLE ASC;