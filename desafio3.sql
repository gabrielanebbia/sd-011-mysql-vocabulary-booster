select j.JOB_TITLE as 'Cargo', j.MAX_SALARY - j.MIN_SALARY as `Diferença entre salários máximo e mínimo`
from hr.jobs as j
order by `Diferença entre salários máximo e mínimo`, j.JOB_TITLE;
