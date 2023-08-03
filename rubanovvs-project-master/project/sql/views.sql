-- [DYNAMIC MASKING]
-- 1) Information about users, but emails and password are hidden
create or replace view user_info as
select id, username, concat(left(email, 3), '*******', right(email, 3)) as email, concat(left(password, 2), '*******', right(password, 2)) as password, subscribe_to
from project.user;

-- 2) Зашифрованы комментарии со спойлерами
create or replace view censored_comments as
select user_id, title_id, concat(left(comment, 2), '***************', right(comment, 2)), date, rating, with_spoiler
from project.comments where with_spoiler is true;

-- [SUMMARY TABLES]
-- 3) Именя пользователей и название их коллекций
create or replace view user_collections as
select username, c.name as coll_name, rating from project."user" as u join project.collections as c on u.id = c.from_user_id;

-- 4) Имя студии, имя режиссера, кол-во серий
create or replace view studios_producers as
select studios.name as studio_name, producers.name as producer_name, serial_count from project.studios join project.producers on studios.id = producers.studio_id;
