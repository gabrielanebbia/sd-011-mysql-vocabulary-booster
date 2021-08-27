select concat(t1.first_name, ' ', t1.last_name) as `Nome completo`,
t2.job_title as Cargo,
t3.start_date as `Data de início do cargo`,
t4.department_name as Departamento
from employees as t1
inner join job_history as t3
on t3.employee_id = t1.employee_id
inner join jobs as t2
on t3.job_id = t2.job_id
inner join departments as t4
on t4.department_id = t3.department_id
order by concat(t1.first_name, ' ', t1.last_name) desc;
