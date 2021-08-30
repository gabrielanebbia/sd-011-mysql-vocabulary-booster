select concat(t1.first_name, ' ', t1.last_name) as `Nome completo`,
concat(substring(t2.START_DATE, 9), '/', substring(t2.START_DATE, 6, 2), '/', substring(t2.START_DATE, 1, 4)) as `Data de início`,
concat(substring(t2.end_date, 9), '/', substring(t2.end_date, 6, 2), '/', substring(t2.end_date, 1, 4)) as `Data de rescisão`,
round((datediff(t2.end_date, t2.START_DATE) / 365), 2) as `Anos trabalhados`
from hr.employees as t1
inner join hr.job_history as t2
on t1.employee_id = t2.employee_id
order by concat(t1.first_name, ' ', t1.last_name), round((datediff(t2.end_date, t2.START_DATE) / 365), 2);
