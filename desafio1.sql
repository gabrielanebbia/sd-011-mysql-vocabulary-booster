select c.COUNTRY_NAME as País, if(r.REGION_NAME = 'Europe', 'incluído', 'não incluído') as 'Status Inclusão'
from hr.countries as c
inner join hr.regions as r
on c.REGION_ID = r.REGION_ID
order by c.COUNTRY_NAME;
