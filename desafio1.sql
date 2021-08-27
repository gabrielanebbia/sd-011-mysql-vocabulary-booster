-- SELECT * FROM countries;
-- SELECT * FROM jobs;
SELECT 
    country_name AS 'Paises',
    CASE
        WHEN region_id = 1 THEN 'Incluído'
        ELSE 'Não incluído'
    END AS 'Status Inclusão'
FROM
    countries ORDER BY country_name;
