SELECT concat(t1.first_name, ' ', t1.last_name) AS 'Nome completo funcionário 1',
t1.SALARY AS 'Salário funcionário 1',
t1.PHONE_NUMBER AS 'Telefone funcionário 1',
concat(t2.first_name, ' ', t2.last_name) AS 'Nome completo funcionário 2',
t2.SALARY AS 'Salário funcionário 2',
t2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS t1, hr.employees AS t2
WHERE 
t1.job_id = t2.job_id AND concat(t1.first_name, ' ', t1.last_name) != concat(t2.first_name, ' ', t2.last_name)
ORDER BY concat(t1.first_name, ' ', t1.last_name) ASC, concat(t2.first_name, ' ', t2.last_name) ASC;
