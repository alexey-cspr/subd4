use students_rb;

select count(case when surname like concat('%', lower(substring('Овчинников', 1, 5)), '%') then surname else null end) as two,
count(case when surname like concat('%', lower(substring('Овчинников', 1, 6)), '%') then surname else null end) as one
from surname;

