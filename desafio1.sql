SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_ID = 1,
        'Incluído',
        'não Incluído') AS 'Status Inclusão'
FROM
    hr.countries
ORDER BY 1;
