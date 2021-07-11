-- ПРАКТИЧЕСКОЕ ЗАДАНИЕ ПО ТЕМЕ “ОПТИМИЗАЦИЯ ЗАПРОСОВ”

-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products 
-- в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

CREATE TABLE logs (
	table_name VARCHAR(20) NOT NULL,
	pkey_id INT UNSIGNED NOT NULL,
	name VARCHAR (255) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT NOW()
) ENGINE=Archive;

DELIMITER //
CREATE PROCEDURE writelog(IN table_name VARCHAR(20), IN pkey_id INT, IN name VARCHAR(100))
BEGIN
	INSERT INTO logs(table_name, pkey_id, name) VALUES (table_name, pkey_id, name);
END//
DELIMITER ;

CREATE TRIGGER users_logs AFTER INSERT ON users
FOR EACH ROW
	CALL writelog('users', NEW.id, NEW.name);

CREATE TRIGGER catalogs_logs AFTER INSERT ON catalogs
FOR EACH ROW
	CALL writelog('catalogs', NEW.id, NEW.name);

CREATE TRIGGER products_logs AFTER INSERT ON products
FOR EACH ROW
	CALL writelog('products', NEW.id, NEW.name);

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP PROCEDURE IF EXISTS billionusers; 

DELIMITER //
CREATE PROCEDURE makeusers (IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  IF (num > 0) THEN
	WHILE i < num DO
	  	INSERT INTO users(name, birthday_at) VALUES (
	  		CONCAT('user_', i+1), 
	  		CURDATE() - INTERVAL FLOOR(1 + RAND()*365*70) DAY
	  	);
	  	SET i = i + 1;
	END WHILE;
  ELSE
	SELECT 'Ошибочное значение параметра';
  END IF;
END//
DELIMITER ;

CALL makeusers(1000000);


-- ПРАКТИЧЕСКОЕ ЗАДАНИЕ ПО ТЕМЕ “NoSQL”


-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.

-- не придумала как увеличивать кол-во посещений в коллекции, поэтому через хэш-таблицы
EXISTS ip:127.0.0.1 -- 0 - ключ не существует, тогда:
HSET ip:127.0.0.1 visits 1 -- сетим ключ при посещении с ip-адреса
HSET ip:127.0.0.2 visits 1 -- сетим другой ключ при посещении с другого ip-адреса
KEYS ip:* -- список всех ip с которых нас посещали
HVALS ip:127.0.0.1 -- 1) "1" - получим кол-во посещений с ip 127.0.0.1
EXISTS ip:127.0.0.1 -- 1 - ключ уже существует, тогда:
HINCRBY ip:127.0.0.1 visits 1 -- запишем еще одно посещение с ip 127.0.0.1
HVALS ip:127.0.0.1 -- 1) "2"

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.

HMSET users:1 name "John Doe" email "john@test.com"
HMSET users:2 name "David Smith" email "david@test.com"
-- сделаем индекс по именам
SADD name:johndoe 1
SADD name:davidsmith 2
-- сделаем индекс по адресу почты
SADD email:john@test.com 1
SADD email:david@test.com 2
-- ищем юзера по индексу
SMEMBERS email:john@test.com -- 1) "1" - получили id юзера по email
HGET users:1 name -- "John Doe" получили имя юзера с id 1
SMEMBERS name:davidsmith -- 1) "2" - получили id юзера по имени
HGET users:2 email -- "david@test.com" получили email юзера с id 2

-- можно просто хранить ключи вида name:email и email:name но мне кажется это как-то слишком немасштабируемо

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

use shop
db.shop.categories.insertMany(
	[{id: 1, name: 'Процессоры'}, 
	{id: 2, name: 'Материнские платы'},
	{id: 3, name: 'Видеокарты'}]
	)

db.shop.products.insertMany(
	[{name: 'Intel Core i3-8100', description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 7890, catalog_id: 1},
	{name: 'Intel Core i5-7400', description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 12700, catalog_id: 1},
	{name: 'MSI B250M GAMING PRO', description: 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', price: 5060, catalog_id: 2}]
	)

db.shop.products.find({catalog_id: 1})
db.shop.categories.find({id: 1})