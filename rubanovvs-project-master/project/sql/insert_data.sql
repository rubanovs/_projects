-- USER INSERTIONS
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Миндовг', 'fir@gmail.com', 'CT9EQk', '12/22/2032');
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Во́йшелк', 'sec@hotmail.com', 'asdwe', null);
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Тро́йден', 'best@yahoo.com', 'ghret', null);
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Ви́тень', 'simple@hotmail.com', 'dghghyerfsd', null);
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Гедими́н', 'really.good@hotmail.com', 'qwerty12345', null);
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Ольгерд', 'nice.man@gmail.com', 'lolkekcheburek', null);
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Яга́йло', 'strong@yahoo.com', 'kjbjdfjKHJ', '12/12/2022');
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Ке́йстут', 'sad@gmail.com', '147741279r831', null);
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Ви́товт', 'funny@gmail.com', 'flbv^731', null);
insert into project.user(id, username, email, password, subscribe_to)
values (default, 'Свидрига́йло', 'power.ranger@yahoo.com', 'vcmnbjgd9', null);

-- STUDIOS INSERTIONS
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Классная студия', null, 4.5, 4);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Великолепная  студия', 'просто великолепная', 4.7, 10);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Потрясающая студия', 'просто потрясающая', 3.4, 23);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Невероятная студия', 'просто невероятная', 3.8, 11);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Превосходная студия', 'просто превосходная', 2.6, 7);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Захватывающая студия', 'просто захватывающая', 4.9, 1);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Великая студия', 'просто великая', 2.3, 2);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Очаровательная студия', 'просто очаровательная', 3.0, 6);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Любимая студия', 'просто любимая', 4.2, 10);
insert into project.studios(id, name, description, rating, serial_count)
values (default, 'Плохая студия', 'просто плохая', 0.5, 27);

-- PRODUCERS INSERTIONS
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 1', 'Настолько классный, что номер 1', 5.0, '09/21/2002', 1);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 2', 'Настолько классный, что номер 2', 4.7, '02/22/2005', 2);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 3', 'Настолько классный, что номер 3', 4.5, '04/10/2002', 3);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 4', 'Настолько классный, что номер 4', 4.3, '09/05/2003', 4);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 5', 'Настолько классный, что номер 5', 4.1, '11/05/1968', 5);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 6', 'Настолько классный, что номер 6', 3.7, '08/07/1987', 6);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 7', null, 3.5, '03/30/1997', 7);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 8', 'Настолько классный, что номер 8', 3.2, '01/14/1898', 8);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 9', 'Настолько классный, что номер 9', 2.2, '05/25/1980', 9);
insert into project.producers(id, name, description, rating, birthday, studio_id)
values (default, 'Классный режиссер 10', 'Настолько классный, что номер 10', 1.3, '09/19/1972', 10);

-- serial INSERTS
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 1', 'оригинальное имя 1', 1, 1, 12, 4.3, '12/12/2021', null);
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 2', 'оригинальное имя 2', 1, 1, 24, 4.0, '12/12/2021',  'очень классный сериал, всем советую');
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 3', 'оригинальное имя 3', 2, 2, 80, 3.8, '12/12/2018', 'не очень классный сериал, всем советую');
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 4', 'оригинальное имя 4', 3, 3, 1, 3.5, '11/22/1968', 'не очень классный сериал, не всем советую');
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 5', 'оригинальное имя 5', 4, 4, 4, 3.5, '12/12/2021', 'очень классный сериал, всем советую');
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 6', 'оригинальное имя 6', 5, 5, 12, 2.3, '12/12/2021', 'очень не классный сериал, всем советую');
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 7', 'оригинальное имя 7', 6, 6, 800, 4.5, '12/07/1999', 'очень не классный сериал, не всем советую');
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 8', 'оригинальное имя 8', 7, 7, 13, 4.7, '09/11/2000', 'Оаоаоааоаоо');
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 9', 'оригинальное имя 9', 8, 8, 25, 4.2, '12/12/2018', null);
insert into project.serial_titles(id, origin_name, russian_name, producer_id, studio_id, series, rating, release_date, description)
values (default, 'origin name 10', 'оригинальное имя 10', 9, 9, 12, 4.1, '09/21/2002', null);

-- COLLECTIONS INSERTIONS
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 1', 'Самые крутые сериалы фореве', 4.7, 1);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 2', 'Самые грустные  фореве', 4.2, 2);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 3', 'Самые плохие сериалы фореве', 4.1, 3);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 3', 'Самые классные сериалы фореве', 3.7, 3);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 4', 'Самые невероятные сериалы фореве', 4.5, 4);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 5', 'Самые отпадные сериалы фореве', 2.6, 5);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 6', 'Самые чумба сериалы фореве', 1.2, 6);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 7.1', 'Самые панквоские сериалы фореве', 3.9, 7);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 7.2', 'Самые зумерские сериалы фореве', 2.7, 7);
insert into project.collections(id, name, description, rating, from_user_id)
values (default, 'Коллекция пользователя 7.3', 'Самые старые сериалы фореве', 1.1, 7);

-- HISTORY INSERTIONS
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 1, 3, '12/12/2019', 11, '00:22:43');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 1, 4, '12/12/2019', 1, '00:10:05');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 2, 3, '12/12/2019', 11, '00:1:43');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 3, 3, '12/12/2019', 12, '00:24:36');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 4, 3, '12/12/2019', 9, '00:14:17');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 8, 1, '12/12/2019', 1, '01:22:36');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 1, 3, '12/12/2019', 11, '00:22:43');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 7, 9, '12/12/2019', 3, '00:12:37');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 2, 3, '12/12/2019', 7, '00:13:53');
insert into project.history(id, user_id, title_id, date, watched_series, stopped_time)
values (default, 6, 3, '12/12/2019', 8, '00:23:33');

-- COLLECTION LIST INSERTIONS
insert into project.collection_list(coll_id, serial_id)
values (1, 1);
insert into project.collection_list(coll_id, serial_id)
values (2, 2);
insert into project.collection_list(coll_id, serial_id)
values (3, 3);
insert into project.collection_list(coll_id, serial_id)
values (4, 4);
insert into project.collection_list(coll_id, serial_id)
values (5, 5);
insert into project.collection_list(coll_id, serial_id)
values (6, 6);
insert into project.collection_list(coll_id, serial_id)
values (7, 7);
insert into project.collection_list(coll_id, serial_id)
values (8, 8);
insert into project.collection_list(coll_id, serial_id)
values (9, 9);
insert into project.collection_list(coll_id, serial_id)
values (10, 10);

-- COMMENTS ISERTIONS
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (1, 1, 'Было круто, лайк', '09/12/2012', 3.4, default);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (2, 1, 'Лучше поискать что-то другое', '09/13/2012', 4.4, default);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (3, 3, 'Наверное это лучшее что я видел когда либо', '09/13/2012', 3.4, default);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (4, 4, 'В конце ГГ умрет', '09/13/2012', 3.4, true);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (5, 5, 'В итоге они будут вместе', '09/13/2012', 3.4, true);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (6, 6, 'Аааа, почему учитель оказался таким крутым', '09/13/2012', 1.4, true);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (7, 7, 'Это школьница такая милая', '09/13/2012', 3.4, default);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (8, 8, 'Мужское слияниееее!!!', '09/13/2012', 4.2, default);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (9, 9, 'Хочу стереть память и посмотреть заново', '09/13/2012', 3.4, default);
insert into project.comments(title_id, user_id, comment, date, rating, with_spoiler)
values (10, 10, 'Это мой любимый режиссер, а это просто шедевр', '09/13/2021', 3.4, default);
