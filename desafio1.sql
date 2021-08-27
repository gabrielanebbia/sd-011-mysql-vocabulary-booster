SELECT 
    P.COUNTRY_NAME AS País, IF(P.REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS P
        INNER JOIN
    hr.regions AS S ON P.REGION_ID = S.REGION_ID
    ORDER BY P.COUNTRY_NAME ASC;
    