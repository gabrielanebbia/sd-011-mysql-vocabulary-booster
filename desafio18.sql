select concat(e.FIRST_NAME, e.LAST_NAME) 'Nome completo',
date_format(jh.START_DATE, '%d/%m/%Y') 'Data de início',
date_format(jh.END_DATE, '%d/%m/%Y') 'Data de rescisão',
round(datediff(jh.END_DATE, jh.START_DATE)/365, 2) 'Anos trabalhados'
from hr.employees e
inner join hr.job_history jh 
on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
order by concat(e.FIRST_NAME, e.LAST_NAME), `Anos trabalhados`;
