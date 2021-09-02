select concat(FIRST_NAME, ' ', LAST_NAME) as 'Nome completo',
JOB_TITLE as 'Cargo',
HIRE_DATE as 'Data de início do cargo',
DEPARTMENT_NAME as 'Departamento'
from hr.employees as e
inner join hr.jobs as j
on e.JOB_ID = j.JOB_ID
inner join hr.departments as d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
order by `Nome completo`, JOB_TITLE;
-- o uso de template strings foi feito com ajuda do mestre Johnatas Henrique que consertei nos últimos desafios também
