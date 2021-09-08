SELECT concat(pf.first_name, ' ', pf.last_name) AS 'Nome completo funcionário 1',
pf.SALARY AS 'Salário funcionário 1',
pf.PHONE_NUMBER AS 'Telefone funcionário 1',
concat(pf2.first_name, ' ', pf2.last_name) AS 'Nome completo funcionário 2',
pf2.SALARY AS 'Salário funcionário 2',
pf2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS pf, hr.employees AS pf2
WHERE 
pf.job_id = pf2.job_id AND concat(pf.first_name, ' ', pf.last_name) != concat(pf2.first_name, ' ', pf2.last_name)
ORDER BY concat(pf.first_name, ' ', pf.last_name) ASC, concat(pf2.first_name, ' ', pf2.last_name) ASC;
