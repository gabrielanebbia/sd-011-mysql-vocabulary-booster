select JOB_TITLE as 'Cargo', MAX_SALARY - MIN_SALARY as 'Diferenças entre salários máximo e mínimo'
from hr.jobs
ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
