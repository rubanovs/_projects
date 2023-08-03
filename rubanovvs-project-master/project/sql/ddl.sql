-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- //////////////////////////////////////////////////////
--                     DDL SCRIPTS
-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

create schema if not exists project;

drop table if exists project.collection_list cascade;
drop table if exists project.collections cascade;
drop table if exists project.history cascade;
drop table if exists project.comments cascade;
drop table if exists project.studios cascade;
drop table if exists project.producers cascade;
drop table if exists project.serial_titles cascade;
drop table if exists project.user cascade;

-- USER TABLE
create table if not exists project.user
(
	id 		        serial 		    primary key,
	username        varchar(50) 	not null,
	email		    varchar(320) 	not null unique,
	password	    varchar(64) 	not null,
    subscribe_to    date
);

create table if not exists project.studios
(
	id		        serial          primary key,
	name            varchar(50)     not null unique,
	description     text,
    rating          decimal(2,1)    check (rating >= 0.0 AND rating <= 5.0),
    serial_count     integer         check (serial_count >= 0)
);

create table if not exists project.producers
(
	id		        serial          primary key,
	name            varchar(50)     not null unique,
	description     text,
    rating          decimal(2,1)    check (rating >= 0.0 AND rating <= 5.0),
    birthday        date            not null,
    studio_id       integer         references project.studios(id)
);

-- serial Titles
create table if not exists project.serial_titles
(
    id              serial          primary key,
    origin_name     varchar(200)    not null unique,
    russian_name    varchar(200)    not null unique,
    producer_id     integer         references project.producers(id),
    studio_id       integer         references project.studios(id),
    series          smallint        check (series >= 0),
    rating          decimal(2,1)    check (rating >= 0.0 AND rating <= 5.0),
    release_date    date            not null,
    description     text
);

-- CHAT TABLE
create table if not exists project.history
(
	id			    serial		    primary key,
	user_id         integer         references project.user(id),
	title_id        integer         references project.serial_titles(id),
	date            date            default current_date,
	watched_series  int             check (watched_series > 0),
	stopped_time    time            not null
);


-- MESSAGE TABLE
create table if not exists project.collections
(
	id		        serial          primary key,
    name            varchar(200)    not null,
    description     text,
    rating          decimal(2,1)    check (rating >= 0.0 AND rating <= 5.0),
    from_user_id    int             references project.user(id)
);


create table if not exists project.comments
(
    title_id        integer         references project.serial_titles(id),
    user_id         integer         references project.user(id),
    comment         text            not null,
    date            date            DEFAULT current_date,
    rating          decimal(2,1)    check (rating >= 0.0 AND rating <= 5.0),
    with_spoiler    boolean         DEFAULT false
);

create table if not exists project.collection_list
(
    coll_id         integer         references project.collections(id) on delete cascade ,
    serial_id        integer         references project.serial_titles(id) on delete cascade
);

alter table project.comments
add constraint pk_comments primary key (title_id, user_id);

alter table project.collection_list
add constraint pk_coll_list primary key (coll_id, serial_id);