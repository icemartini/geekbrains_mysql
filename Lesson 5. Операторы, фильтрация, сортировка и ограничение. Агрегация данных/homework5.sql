-- Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
UPDATE users SET created_at = NOW() where created_at is NULL;
UPDATE users SET updated_at = NOW() where updated_at is NULL;

-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время 
-- помещались значения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
UPDATE users SET created_at = STR_TO_DATE(created_at,'%d.%m.%Y %H:%i'), updated_at = STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i');
ALTER TABLE users MODIFY COLUMN created_at DATETIME;
ALTER TABLE users MODIFY COLUMN updated_at DATETIME;

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился
-- и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке 
-- увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.
SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;

-- 4. Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
-- Месяцы заданы в виде списка английских названий (may, august)
SELECT id, name, birthday_at FROM users WHERE MONTHNAME(birthday_at) IN ('may', 'august');
	
-- 5. Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
-- Отсортируйте записи в порядке, заданном в списке IN.
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIND_IN_SET(id,'5,1,2');

-- Практическое задание теме «Агрегация данных»

-- 1. Подсчитайте средний возраст пользователей в таблице users.
SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))) AS avg_age FROM users;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
SELECT
	DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS cur_weekday,
	COUNT(*) AS total
FROM
	users
GROUP BY
	cur_weekday
ORDER BY
	total DESC;

-- 3. Подсчитайте произведение чисел в столбце таблицы.
SELECT ROUND(exp(SUM(ln(value)))) as result FROM tablename;