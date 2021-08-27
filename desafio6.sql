select
concat(e.FIRST_NAME, ' ', e.LAST_NAME) as `Nome completo`,
j.JOB_TITLE as `Cargo`,
jh.START_DATE as 'Data de início do cargo',
d.DEPARTMENT_NAME as 'Departamento'
from hr.job_history as jh
inner join hr.employees as e on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
inner join hr.jobs as j on jh.JOB_ID = j.JOB_ID
inner join hr.departments as d on d.DEPARTMENT_ID = jh.DEPARTMENT_ID
order by `Nome completo` desc, `Cargo`;
