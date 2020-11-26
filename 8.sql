use students_rb;
select 'name' as table_name, sum(case when char_length(name) = (select min(char_length(name)) from name) then 1 else 0 end) as min,
sum(case when char_length(name) = (select max(char_length(name)) from name) then 1 else 0 end) as max, 
sum(case when char_length(name) = (select round(avg(char_length(name))) from name) then 1 else 0 end) as average
from name
union all
select 'surname' as table_name, sum(case when char_length(surname) = (select min(char_length(surname)) from surname) then 1 else 0 end) as min,
sum(case when char_length(surname) = (select max(char_length(surname)) from surname) then 1 else 0 end) as max, 
sum(case when char_length(surname) = (select round(avg(char_length(surname))) from surname) then 1 else 0 end) as average
from surname
union all
select 'country' as table_name, sum(case when char_length(country_name) = (select min(char_length(country_name)) from country) then 1 else 0 end) as min,
sum(case when char_length(country_name) = (select max(char_length(country_name)) from country) then 1 else 0 end) as max, 
sum(case when char_length(country_name) = (select round(avg(char_length(country_name))) from country) then 1 else 0 end) as average
from country
union all
select 'region' as table_name, sum(case when char_length(region_name) = (select min(char_length(region_name)) from region) then 1 else 0 end) as min,
sum(case when char_length(region_name) = (select max(char_length(region_name)) from region) then 1 else 0 end) as max, 
sum(case when char_length(region_name) = (select round(avg(char_length(region_name))) from region) then 1 else 0 end) as average
from region
union all
select 'city' as table_name, sum(case when char_length(city_name) = (select min(char_length(city_name)) from city) then 1 else 0 end) as min,
sum(case when char_length(city_name) = (select max(char_length(city_name)) from city) then 1 else 0 end) as max, 
sum(case when char_length(city_name) = (select round(avg(char_length(city_name))) from city) then 1 else 0 end) as average
from city
union all
select 'univer' as table_name, sum(case when char_length(univer_name) = (select min(char_length(univer_name)) from univer) then 1 else 0 end) as min,
sum(case when char_length(univer_name) = (select max(char_length(univer_name)) from univer) then 1 else 0 end) as max, 
sum(case when char_length(univer_name) = (select round(avg(char_length(univer_name))) from univer) then 1 else 0 end) as average
from univer;

