select ucase(concat(t1.first_name, ' ', t1.last_name)) as `Nome completo`,
t2.start_date as `Data de início`,
t1.salary as Salário
from employees as t1
inner join job_history as t2
on t2.employee_id = t1.employee_id
where month(t2.start_date) between '01' and '03'
order by ucase(concat(t1.first_name, ' ', t1.last_name)), t2.start_date;
