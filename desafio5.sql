select
j.JOB_TITLE as `Cargo`,
j.MAX_SALARY - j.MIN_SALARY as `Variação Salarial`,
round(j.MIN_SALARY/12, 2) as `Média mínima mensal`,
round(j.MAX_SALARY/12, 2) as `Média máxima mensal`
from hr.jobs as j
order by `Variação Salarial`, `Cargo`;
