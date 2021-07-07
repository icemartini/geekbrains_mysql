-- 1. Проанализировать, какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.

CREATE INDEX cities_name_idx ON cities(name);
CREATE INDEX communities_name_idx ON communities(name);
CREATE UNIQUE INDEX countries_name_idx ON countries(name);
CREATE INDEX friendship_requested_at_idx ON friendship(requested_at);
CREATE INDEX friendship_confirmed_at_idx ON friendship(confirmed_at);
CREATE INDEX likes_target_id_idx ON likes(target_id);
CREATE INDEX media_filename_idx ON media(filename);
CREATE INDEX media_size_idx ON media(size);
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);
CREATE INDEX posts_user_id_community_id_idx ON posts(user_id, community_id);
CREATE INDEX profiles_birthday_idx ON profiles(birthday);
CREATE UNIQUE INDEX users_email_idx ON users(email);
CREATE UNIQUE INDEX users_phone_idx ON users(phone);

-- 2. Задание на оконные функции
/* 
* Построить запрос, который будет выводить следующие столбцы:
* имя группы
* среднее количество пользователей в группах
* самый молодой пользователь в группе
* самый старший пользователь в группе
* общее количество пользователей в группе
* всего пользователей в системе
* отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
*/

/*
 * долго мучалась с колонкой "среднее количество пользователей в группах", красивого решения так и не придумала
 * поэтому с костылями через avg от колонки view
 * LEFT JOIN-ы потому что в одной из групп нет юзеров, надо это учесть при расчете среднего кол-ва
 */

-- сначала создадим view с количеством пользователей по группам для второй колонки запроса
CREATE OR REPLACE VIEW group_users AS 
	SELECT DISTINCT c.id, COUNT(cu.user_id) OVER(PARTITION BY cu.community_id) AS users_in_group
	FROM communities c 
		LEFT JOIN communities_users cu
		ON c.id = cu.community_id;

SELECT DISTINCT	
	c.name,
	AVG(gu.users_in_group) OVER () AS avg,
	MIN(cu.user_id) OVER(PARTITION BY cu.community_id) AS youngest,
	MAX(cu.user_id) OVER(PARTITION BY cu.community_id) AS oldest,
	COUNT(cu.user_id) OVER(PARTITION BY cu.community_id) AS users_in_group,
	COUNT(u.id) OVER () AS users_total,
	COUNT(cu.user_id) OVER(PARTITION BY cu.community_id) / COUNT(u.id) OVER () * 100 AS '%'
FROM communities c
	LEFT JOIN communities_users cu 
		ON c.id = cu.community_id
	LEFT JOIN users u 
		ON u.id = cu.user_id
	LEFT JOIN group_users gu
		ON gu.id = c.id;