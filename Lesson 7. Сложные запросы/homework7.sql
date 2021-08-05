-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT users.id, name FROM users JOIN orders ON users.id = orders.user_id;

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT p.name, c.name FROM products p JOIN catalogs c ON p.catalog_id = c.id;

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.
 	
SELECT f.id, c.name, c2.name FROM flights f JOIN cities c ON f.from = c.label JOIN cities c2 ON f.to = c2.label;