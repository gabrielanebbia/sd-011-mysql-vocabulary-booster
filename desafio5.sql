select JOB_TITLE as 'Cargo',
MAX_SALARY - MIN_SALARY as 'Variação Salarial',
round(min_salary/12, 2) as 'Média mínima mensal',
round(max_salary/12, 2) as 'Média máxima mensal'
from hr.jobs
order by `Variação Salarial`, JOB_TITLE;
