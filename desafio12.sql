select
concat(t1.FIRST_NAME, ' ', t1.LAST_NAME) as `Nome completo funcionário 1`,
t1.SALARY as `Salário funcionário 1`,
t1.PHONE_NUMBER as `Telefone funcionário 1`,
concat(t2.FIRST_NAME, ' ', t2.LAST_NAME) as `Nome completo funcionário 2`,
t2.SALARY as `Salário funcionário 2`,
t2.PHONE_NUMBER as `Telefone funcionário 2`
from hr.employees as t1, hr.employees as t2
where t1.JOB_ID = t2.JOB_ID and concat(t1.FIRST_NAME, ' ', t1.LAST_NAME) <> concat(t2.FIRST_NAME, ' ', t2.LAST_NAME)
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
