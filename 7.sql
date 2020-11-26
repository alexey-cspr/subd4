use students_rb;

select 'name' as name, 
min(char_length(name)) as min, 
max(char_length(name)) as max, 
avg(char_length(name)) as average
from name
union all
select 'surname' as table_name, 
min(char_length(surname)) as min, 
max(char_length(surname)) as max, 
avg(char_length(surname)) as average
from surname
union all
select 'country' as table_name, 
min(char_length(country_name)) as min, 
max(char_length(country_name)) as max, 
avg(char_length(country_name)) as average
from country
union all
select 'region' as table_name, 
min(char_length(region_name)) as min, 
max(char_length(region_name)) as max, 
avg(char_length(region_name)) as average
from region
union all
select 'city' as table_name, 
min(char_length(city_name)) as min, 
max(char_length(city_name)) as max, 
avg(char_length(city_name)) as average
from city
union all
select 'univer' as table_name, 
min(char_length(univer_name)) as min, 
max(char_length(univer_name)) as max, 
avg(char_length(univer_name)) as average
from univer;
