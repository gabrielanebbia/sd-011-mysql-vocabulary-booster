SELECT JOB_TITLE AS 'Cargo', MAX_SALARY - MIN_SALARY AS 'Diferença entre salários máaximo e minimo' FROM hr.jobs 
GROUP BY JOB_ID ORDER BY `Diferença entre salários máaximo e minimo`, Cargo;

