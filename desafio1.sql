SELECT
  COUNTRY_NAME AS 'País',
  (
    SELECT
      IF(r.REGION_NAME = 'Europe', 'incluído', 'não incluído')
    FROM
      regions AS r
    WHERE
      r.REGION_ID = c.REGION_ID
  ) AS 'Status Inclusão'
FROM
  countries AS c
ORDER BY
  COUNTRY_NAME ASC;
