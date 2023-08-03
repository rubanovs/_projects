-- ==================== Select =========================
-- View table with users
select * from project.user;

-- List names and handles of users with subscribing
select username, email
from project.user
where project.user.subscribe_to is not null;

-- Count studios where rating more than 4.0
select count(name)
from project.studios
where rating > 4.0;

-- List all comment text from all users
select comment
from project.comments;

-- ==================== Update =========================
-- Our producer changed name<3
update project.producers
set name = 'Новый Классный режиссер 4'
where name = 'Классный режиссер 4';

-- Give description where null)
update project.serial_titles
set description = 'Почему же оно одинаковое!?'
where description is null;

-- ==================== Insert =========================
-- We get a new producer!!
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Дэвид Бениофф', 'реально крут', 5.0, '09/25/1970', 1);

-- Insert new serial... very successful)
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'Game of thrones', 'Игра престолов', 11, 1, 70, 5.0, '05/10/2010', 'крутой сериал');


-- ==================== Delete =========================
-- delete comments where rating less than 2
delete from project.comments where rating<2.0;

-- delete history with stopped time '00:10:05'
delete from project.history where stopped_time='00:10:05'