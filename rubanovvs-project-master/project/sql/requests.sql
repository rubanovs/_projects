-- [GROUP BY + HAVING] { Вывести пользователей, которые оставили больше одного комментария }
select u.username
from project.user as u join project.comments as c on u.id = c.user_id
group by u.username
having count(c.comment) > 1;

-- [ORDER BY] { Вывести топовые сериалы по рейтингу }
select russian_name, rating
from project.serial_titles
order by rating desc;

-- [PARTITION BY] { Кол-во сериалов от разных студий }
select distinct studio_id, count(russian_name) over(partition by studio_id) from project.serial_titles;

-- [ORDER BY] { Выведем место в топе рейтинга для каждой коллекции }
select c.id, rating, count(id) over(order by rating desc) from project.collections as c;

-- [PARTITION BY + ORDER BY] { Вывести место в топе создателя для каждой коллекции }
select id, from_user_id, rating, row_number() over(partition by from_user_id order by rating desc) from project.collections as c;

-- Вывести следующие имя кол-ции пользователя
select * from (select from_user_id, lead(name) over (partition by from_user_id) as Next from project.collections) as tmp where Next is not null