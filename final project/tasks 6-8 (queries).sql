-- 6. скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные запросы);

-- найдем все исторические фильмы, которые нравятся тинейджерам (возраст 10-19, оценка от 7 и выше)
SELECT DISTINCT m.name 
FROM movies m 
JOIN scores s 
	ON m.id = s.movie_id
JOIN users u 
	ON u.id = s.user_id 
JOIN profiles p 
	ON u.id = p.user_id
JOIN genres g 
	ON g.id = m.genre_id 
WHERE 
	p.birthday BETWEEN (CURDATE() - INTERVAL 19 YEAR) AND (CURDATE() - INTERVAL 10 YEAR)
AND s.score >= 7
AND g.name = 'Исторические';

-- найдем 10 пользователей, выставивших наибольшее число оценок
SELECT u.id, COUNT(s.movie_id) as total_scores
FROM users u
JOIN scores s 
	ON u.id = s.user_id
GROUP BY s.user_id 
ORDER BY total_scores DESC
LIMIT 10;

-- найдем юзера, который посмотрел больше всего фильмов
SELECT u.id, COUNT(um.movie_id) as total_watched
FROM users u 
JOIN user_marks um 
	ON u.id = um.user_id 
JOIN mark_types mt 
	ON um.mark_type_id = mt.id 
WHERE mt.name = 'смотрел'
GROUP BY um.user_id
ORDER BY total_watched DESC
LIMIT 1;

-- выясним, кто больше склонен писать ревью - мужчины или женщины (из тех юзеров, что указали свой пол), 
-- а кто - проставлять оценки
SELECT 
	IF (
	(SELECT COUNT(user_id) FROM reviews WHERE user_id IN (
		SELECT user_id FROM profiles WHERE gender = "m")
	) 
	> 
	(SELECT COUNT(user_id) FROM reviews WHERE user_id IN (
		SELECT user_id FROM profiles WHERE gender = "f")
	), 
'male', 'female') as reviews_gender, 
	IF (
	(SELECT COUNT(user_id) FROM scores WHERE user_id IN (
		SELECT user_id FROM profiles WHERE gender = "m")
	) 
	> 
	(SELECT COUNT(user_id) FROM scores WHERE user_id IN (
		SELECT user_id FROM profiles WHERE gender = "f")
	), 
'male', 'female') as scores_gender;

-- 7. представления (минимум 2);

-- отсортируем пользователей по суммарной активности в сервисе
CREATE OR REPLACE VIEW activity AS
SELECT  
	u.id, 
	CONCAT (u.first_name, ' ', u.last_name) AS name, 
	COUNT(DISTINCT s.movie_id) AS scores, 
	COUNT(DISTINCT r.movie_id) AS reviews,
	COUNT(DISTINCT um.movie_id) AS marks,
	COUNT(DISTINCT s.movie_id) + COUNT(DISTINCT r.movie_id) + COUNT(DISTINCT um.movie_id) AS total
FROM users u
LEFT JOIN scores s 
	ON u.id = s.user_id
LEFT JOIN reviews r 
	ON u.id = r.user_id 
LEFT JOIN user_marks um 
	ON u.id = um.user_id 
GROUP BY u.id
ORDER BY total DESC;

SELECT * FROM activity;

-- отсортируем фильмы по популярности среди пользователей
CREATE OR REPLACE VIEW popular AS
SELECT  
	m.id, 
	m.name, 
	COUNT(DISTINCT s.user_id) AS scores, 
	COUNT(DISTINCT r.user_id) AS reviews,
	COUNT(DISTINCT um.user_id) AS marks,
	COUNT(DISTINCT s.user_id) + COUNT(DISTINCT r.user_id) + COUNT(DISTINCT um.user_id) AS total
FROM movies m
LEFT JOIN scores s 
	ON m.id = s.movie_id
LEFT JOIN reviews r 
	ON m.id = r.movie_id 
LEFT JOIN user_marks um 
	ON m.id = um.movie_id 
LEFT JOIN mark_types mt 
	ON um.mark_type_id = mt.id
WHERE NOT mt.name = 'пропущен'
GROUP BY m.id
ORDER BY total DESC;

SELECT * FROM popular;

-- 8. хранимые процедуры / триггеры;

-- таблица логов используемая для процедуры
CREATE TABLE logs (
	created_at DATETIME NOT NULL DEFAULT NOW(),
	user_id INT UNSIGNED NOT NULL,
	movie_id INT UNSIGNED NOT NULL,
	action_type VARCHAR(255) NOT NULL
) ENGINE=Archive;

DELIMITER //

CREATE PROCEDURE writelog(IN user_id INT, IN movie_id INT, IN action VARCHAR(255))
BEGIN
	INSERT INTO logs(user_id, movie_id, action_type) VALUES (user_id, movie_id, action_type);
END//

-- запишем в логи добавление ревью для фильма
CREATE TRIGGER reviews_logs AFTER INSERT ON reviews
FOR EACH ROW
	CALL writelog(NEW.user_id, NEW.movie_id, 'new_review')//

-- запишем в логи добавление оценки фильма
CREATE TRIGGER scores_logs AFTER INSERT ON scores
FOR EACH ROW
	CALL writelog(NEW.user_id, NEW.movie_id, 'new_score')//
	
-- запишем в логи добавление фильму метки
CREATE TRIGGER marks_logs AFTER INSERT ON user_marks
FOR EACH ROW
BEGIN
	DECLARE mark VARCHAR(100);
	SELECT mt.name INTO mark 
	FROM mark_types mt JOIN user_marks um ON mt.id = um.mark_type_id 
	WHERE um.user_id = NEW.user_id AND um.movie_id = NEW.movie_id;
	CALL writelog(NEW.user_id, NEW.movie_id, mark);
END//

DELIMITER ;
	
-- проверим запись логов
INSERT INTO reviews (user_id, movie_id, review) VALUES (1, 50, 'test review');
INSERT INTO scores (user_id, movie_id, score) VALUES (2, 65, 7);
INSERT INTO user_marks (user_id, movie_id, mark_type_id) VALUES (3, 80, 2);
SELECT * FROM logs;

DELIMITER //

-- триггер на проверку согласованности дат при добавлении трейлера
CREATE TRIGGER check_trailer_insert BEFORE INSERT ON trailers
FOR EACH ROW
BEGIN
	IF NEW.updated_at < NEW.created_at THEN
		SET NEW.updated_at = NOW();
  	END IF;
END//

DELIMITER ;

-- проверим что триггер работает
INSERT INTO trailers (filename, size, created_at, updated_at) 
VALUES ('https://dropbox.com/vk/test.avi', 10000, DEFAULT, '2018-06-20 09:52:17');

DELIMITER //

-- запретим удалять необязательные данные из профиля, если они уже были указаны
CREATE TRIGGER check_profile_data_update BEFORE UPDATE ON profiles
FOR EACH ROW
BEGIN
	IF NEW.photo_id IS NULL OR NEW.birthday IS NULL OR NEW.gender IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'deleting existing profile data is not allowed';
  	END IF;
END//

DELIMITER ;

-- проверим что триггер работает
UPDATE profiles SET gender = NULL WHERE user_id = 1;