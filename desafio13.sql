SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo funcionário 1',
    e.salary AS 'Salário funcionário 1',
    e.phone_number AS 'Telefone funcionário 1',
    CONCAT(d.first_name, ' ', d.last_name) AS 'Nome completo funcionário 2',
    d.salary AS 'Salário funcionário 2',
    d.phone_number AS 'Telefone funcionário 2'
FROM
    employees AS e,
    employees AS d
WHERE
    e.job_id = d.job_id
        AND CONCAT(e.first_name, ' ', e.last_name) != CONCAT(d.first_name, ' ', d.last_name)
ORDER BY `Nome completo funcionário 1`;
