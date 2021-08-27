select
ucase(concat(e.FIRST_NAME, ' ', e.LAST_NAME)) as `Nome completo`,
jh.START_DATE as `Data de início`,
e.SALARY as `Salário`
from hr.job_history as jh
inner join hr.employees as e on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
inner join hr.jobs as j on jh.JOB_ID = j.JOB_ID
where month(jh.START_DATE) between 1 and 3
order by `Nome completo`, `Data de início`;
