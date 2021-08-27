SELECT c.COUNTRY_NAME 'País', r.REGION_NAME 'Status Inclusão'
FROM hr.countries c
INNER JOIN regions r
ON r.REGION_ID = c.REGION_ID
WHERE r.REGION_NAME = 'Europe';
