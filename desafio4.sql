select t2.job_title as Cargo, round(avg(t1.salary), 2) as `Média salarial`,
case
when avg(t1.salary) > 2000 and avg(t1.salary) <= 5800 then 'Júnior'
when avg(t1.salary) > 5800 and avg(t1.salary) <= 7500 then 'Pleno'
when avg(t1.salary) > 7500 and avg(t1.salary) <= 10500 then 'Sênior'
else 'CEO'
end as Senioridade
from employees as t1
inner join jobs as t2
on t1.job_id = t2.job_id
group by t1.job_id
order by avg(t1.salary), t2.job_title;
