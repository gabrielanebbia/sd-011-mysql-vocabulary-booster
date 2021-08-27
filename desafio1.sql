select country_name as País,
case
	when region_id = 1 then 'incluído'
    else 'não incluído'
end as `Status Inclusão`
from hr.countries
order by country_name;