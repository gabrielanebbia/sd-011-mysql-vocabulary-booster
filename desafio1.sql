SELECT COUNTRY_NAME AS País,
IF(region_id = 1,
    "Incluído",
    "Não Incluído") AS "Status Inclusão"
    FROM hr.countries;
