select concat(t1.first_name, ' ', t1.last_name) as `Nome completo funcionário 1`,
t1.salary as `Salário funcionário 1`,
t1.phone_number as `Telefone funcionário 1`,
concat(t2.first_name, ' ', t2.last_name) as `Nome completo funcionário 2`,
t2.salary as `Salário funcionário 2`,
t2.phone_number as `Telefone funcionário 2`
from hr.employees as t1, hr.employees as t2
where t1.job_id = t2.job_id and concat(t1.first_name, ' ', t1.last_name) <> concat(t2.first_name, ' ', t2.last_name)
order by concat(t1.first_name, ' ', t1.last_name), concat(t2.first_name, ' ', t2.last_name)
