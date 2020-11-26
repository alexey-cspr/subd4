use students_rb;

select count(case when name like concat('%', lower(substring('Алексей', 1, 5)), '%') then name else null end) as two,
count(case when name like concat('%', lower(substring('Алексей', 1, 6)), '%') then name else null end) as one
from name;
