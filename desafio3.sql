  select JOB_TITLE AS 'Cargo' , 
  (MAX_SALARY - MIN_SALARY)
    AS 'Diferença entre salários máximo e mínimo' from jobs
    ORDER BY (MAX_SALARY - MIN_SALARY), JOB_TITLE; 
