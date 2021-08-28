SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_ID = 1,
        'incluído',
        'não Incluído') AS 'Status Inclusão'
FROM
    hr.countries
ORDER BY 1;
