-- ПРАКТИЧЕСКОЕ ЗАДАНИЕ ПО ТЕМЕ "ТРАНЗАКЦИИ, ПЕРЕМЕННЫЕ, ПРЕДСТАВЛЕНИЯ"


-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1; -- поскольку перемещение предполагает появление записи в одном месте и исчезновение в другом
COMMIT;

-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW task_2 AS 
	SELECT p.name AS product_name, c.name AS catalog_name 
	FROM products p 
	JOIN catalogs c 
	ON p.catalog_id = c.id;

SELECT * FROM task_2;

-- 3. (по желанию) Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые календарные записи за август 2018 года 
-- '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. Составьте запрос, который выводит полный список дат за август, 
-- выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

DROP TABLE IF EXISTS dates;
CREATE TABLE dates (
	created_at DATE
);

INSERT INTO dates VALUES
	('2018-08-01'),
	('2018-08-04'),
	('2018-08-16'),
	('2018-08-17');

CREATE OR REPLACE VIEW august AS
SELECT day
	FROM
	(SELECT
        '2018-08-01' +
        INTERVAL daynum DAY day
    FROM
    	(
        SELECT t*10+u daynum
        FROM
            (SELECT 0 t UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) A,
            (SELECT 0 u UNION SELECT 1 UNION SELECT 2 UNION SELECT 3
            UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7
            UNION SELECT 8 UNION SELECT 9) B
        ORDER BY daynum
	    ) AA
    ) AAA
	WHERE MONTH(day) = 8;

SELECT day, (SELECT EXISTS(SELECT * FROM dates WHERE created_at = day)) AS is_mentioned FROM august; 

-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, 
-- оставляя только 5 самых свежих записей.

DROP TABLE IF EXISTS dates;
CREATE TABLE dates (
	created_at DATE
);

INSERT INTO dates VALUES
	('2018-08-18'),
	('2018-08-19'),
	('2018-08-20'),
	('2018-08-21'),
	('2018-08-22'),
	('2018-08-23'),
	('2018-08-24'),
	('2018-08-25');

DELETE FROM dates 
WHERE created_at NOT IN (
	SELECT *
	FROM (
		SELECT *
		FROM dates
		ORDER BY created_at DESC
		LIMIT 5
	) AS five_latest
);


-- ПРАКТИЧЕСКОЕ ЗАДАНИЕ ПО ТЕМЕ "ХРАНИМЫЕ ПРОЦЕДУРЫ И ФУНКЦИИ, ТРИГГЕРЫ"


-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello() 
RETURNS TEXT DETERMINISTIC
BEGIN
	RETURN CASE
		WHEN 6 <= HOUR(NOW()) AND HOUR(NOW()) < 12 THEN "Доброе утро"
		WHEN 12 <= HOUR(NOW()) AND HOUR(NOW()) < 18 THEN "Добрый день"
		WHEN 18 <= HOUR(NOW()) AND HOUR(NOW()) < 0 THEN "Добрый вечер"
		ELSE "Доброй ночи"
    END;
END//

DELIMITER ;

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	name VARCHAR(255),
	description TEXT
);

DELIMITER //

CREATE TRIGGER check_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF NEW.name IS NULL AND NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'both name and description are empty';
  	END IF;
END//

CREATE TRIGGER check_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
	IF NEW.name IS NULL AND NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'both name and description are empty';
  	END IF;
END//

DELIMITER ;

-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

-- долго билась головой об гугл но не осилила :'( 