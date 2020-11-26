use students_rb;

set foreign_key_checks = 0;

truncate table middle_name_buffer;

set foreign_key_checks = 1;

insert into middle_name_buffer(middle_name) select
case when substr(name, char_length(name), 1) in ('ж', 'ч', 'ц', 'ш', 'щ')
	then concat(name, 'евич')
    else concat(name, 'ович')
end
from name
where substr(name, char_length(name), 1) not in ('а', 'я')
order by name;
