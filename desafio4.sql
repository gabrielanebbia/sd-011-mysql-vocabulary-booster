select j.JOB_TITLE as 'Cargo',
round(avg(e.SALARY), 2) as 'Média salarial',
case
when round(avg(e.SALARY), 2) between 2000 and 5800 then 'Júnior'
when round(avg(e.SALARY), 2) between 5801 and 7500 then 'Pleno'
when round(avg(e.SALARY), 2) between 7501 and 10500 then 'Sênior'
when round(avg(e.SALARY), 2) > 10500 then 'CEO'
else null
end as 'Senioridade'
from hr.employees as e
inner join hr.jobs as j
on e.JOB_ID = j.JOB_ID
group by Cargo
order by `Média salarial`, j.JOB_TITLE ;
-- avg e group by encontrados em:
-- https://pt.stackoverflow.com/questions/14433/como-calcular-m%C3%A9dia-de-um-resultado-de-query-mysql
-- https://pt.stackoverflow.com/questions/162534/pivot-agrupar-registros-duplicados-em-uma-unica-linha
