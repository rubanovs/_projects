-- Добавление сериала в коллекцию
create or replace procedure add_serial_to_collection(coll_id integer, serial_id integer)
language plpgsql
as $$
begin
	insert into project.collection_list(coll_id, serial_id) values (coll_id, serial_id);
end
$$;

call add_serial_to_collection(1, 2);


-- 2) Добавление комментария
create or replace procedure add_comment(user_id integer, title_id integer, comment text)
language plpgsql
as $$
begin
	insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
    values (title_id, user_id, comment, current_date, 0.0, default);
end
$$;

call add_comment(2, 2, 'Ура, новый коммент');