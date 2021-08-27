select j.JOB_TITLE as 'Cargo',
case
when j.MAX_SALARY between 5000 and 10000 then 'Baixo'
when j.MAX_SALARY between 10001 and 20000 then 'Médio'
when j.MAX_SALARY between 20001 and 30000 then 'Alto'
else 'Altíssimo'
end as 'Nível'
from hr.jobs as j
order by j.JOB_TITLE;
