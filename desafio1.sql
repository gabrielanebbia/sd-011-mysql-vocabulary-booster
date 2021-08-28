SELECT COUNTRY_NAME AS País,
IF(region_id = 1,
    'Incluido',
    'Não Incluido') AS 'Status Inclusao'
    FROM hr.countries;
