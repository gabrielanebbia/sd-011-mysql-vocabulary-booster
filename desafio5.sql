select JOB_TITLE as 'Cargo',
MAX_SALARY - MIN_SALARY as 'Variação Salarial',
round(min_salary/12, 2) as 'Média mínima mensal',
round(max_salary/12, 2) as 'Média máxima mensal'
from hr.employees as e
inner join hr.jobs as j
on e.JOB_ID = j.JOB_ID
group by Cargo
order by MAX_SALARY - MIN_SALARY, JOB_TITLE;
