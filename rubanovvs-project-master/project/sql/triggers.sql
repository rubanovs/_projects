-- trigger на insert в таблицу collections

create or replace function notice_new_collections()
    returns trigger as $$
    declare
    begin
        raise notice 'New collections was added';
        return new;
    end;
$$ language plpgsql;

drop trigger if exists notice_new on project.collections;
create trigger notice_new
    after insert on project.serial_titles
    for each row
    execute procedure notice_new_collections();

-- trigger на delete из таблицы collections

create or replace function notice_delete_collections()
    returns trigger as $$
    declare
    begin
        raise notice 'Collection was deleted';
        return new;
    end;
$$ language plpgsql;

drop trigger if exists notice_delete on project.collections;
create trigger notice_delete
    after delete on project.collections
    for each row
    execute procedure notice_delete_collections();

insert into project.collections (id, name, description, rating, from_user_id)
values (default, 'Круто', null, 4.5, 2);
delete from project.collections where name = 'Круто';
