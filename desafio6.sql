-- SELECT * FROM countries;
SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    j.job_title AS 'Cargo',
    e.hire_date AS 'Data de início do cargo',
    d.department_name AS 'Departamento'
FROM
    jobs AS j
        INNER JOIN
    employees AS e ON j.job_id = e.job_id
        INNER JOIN
    departments AS d ON e.department_id = d.department_id
GROUP BY j.job_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC , d.department_name ASC;
