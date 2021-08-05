-- ПОВТОРИТЬ ВСЕ ДЕЙСТВИЯ ПО ДОРАБОТКЕ БД VK.

-- Таблица стран
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название страны",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник стран";  

-- Таблица статусов пользователей
CREATE TABLE user_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название статуса (уникально)",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник статусов пользователей";

UPDATE profiles SET status = NULL;
INSERT INTO user_statuses (name) VALUES ('single'),('married');
ALTER TABLE profiles RENAME COLUMN status TO status_id;
ALTER TABLE profiles MODIFY COLUMN status_id INT UNSIGNED;


-- ПРИМЕНИТЬ СВОИ ИДЕИ НА ПРАКТИКЕ

-- * users - добавить поле password VARCHAR(100) NOT NULL, phone сделать VARCHAR(20)
-- password добавлять не стала, т.к. на уроке не рекомендовали так делать
ALTER TABLE users MODIFY COLUMN phone VARCHAR(20) NOT NULL UNIQUE;

-- * profiles - city и country сделать INT(10) и создать для них отдельную таблицу
-- таблицу стран уже создали выше
-- таблица городов
CREATE TABLE cities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название города",
  country_id INT NOT NULL COMMENT "Идентификатор страны",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник городов"; 

UPDATE profiles SET city = NULL;
UPDATE profiles SET country = NULL;
ALTER TABLE profiles CHANGE COLUMN city city_id INT(10) UNSIGNED;
ALTER TABLE profiles CHANGE COLUMN country country_id INT(10) UNSIGNED;

-- * messages - добавить поле is_read BOOLEAN NOT NULL DEFAULT '0'
ALTER TABLE messages ADD COLUMN is_read BOOLEAN NOT NULL DEFAULT '0';

-- * friendship_statuses - кажется что поля created_at и updated_at тут излишни
ALTER TABLE friendship_statuses DROP COLUMN created_at;
ALTER TABLE friendship_statuses DROP COLUMN updated_at;

-- * в communities можно добавить поля photo_id INT UNSIGNED, description VARCHAR(255), 
-- is_moderated BOOLEAN NOT NULL DEFAULT 0 (доступно для всех или нет), 
-- category TINYINT(3) UNSIGNED и создать таблицу с категориями сообществ

ALTER TABLE communities ADD COLUMN photo_id INT UNSIGNED;
ALTER TABLE communities ADD COLUMN description VARCHAR(255);
ALTER TABLE communities ADD COLUMN is_moderated BOOLEAN NOT NULL DEFAULT 0;
ALTER TABLE communities ADD COLUMN category_id TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;

-- таблица категорий
CREATE TABLE communities_categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название категории"
) COMMENT "Справочник категорий"; 


-- ЗАПОЛНИТЬ НОВЫЕ ТАБЛИЦЫ.

-- user_statuses уже заполнили выше
INSERT INTO communities_categories (name) VALUES ('All'),('Auto'),('Beauty'),('Business'),('Extreme'),('Fitness'),('Health'),('Humor'),('Leisure'),('Photo');

INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (1, 'Madisonview', 10, '2021-05-03 21:51:57', '2021-06-03 04:37:04');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (2, 'North Santiagoville', 4, '2021-02-23 11:43:40', '2020-08-21 15:20:31');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (3, 'West Brianne', 3, '2021-06-09 00:01:57', '2021-06-05 19:57:14');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (4, 'Wolfton', 8, '2020-11-02 20:39:01', '2020-09-13 00:56:05');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (5, 'Estherfort', 4, '2020-12-13 06:20:02', '2021-04-25 09:59:41');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (6, 'Wymanstad', 19, '2020-11-23 14:06:55', '2021-03-02 11:04:04');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (7, 'Lake Emerald', 3, '2020-08-12 12:05:32', '2020-12-30 14:42:25');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (8, 'Walkerborough', 4, '2021-04-13 05:55:13', '2020-11-20 06:59:37');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (9, 'Botsfordtown', 2, '2020-12-18 01:55:21', '2020-07-09 21:46:44');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (10, 'Shadville', 15, '2020-09-03 05:00:37', '2020-10-27 23:23:49');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (11, 'Lake Twilashire', 20, '2020-11-04 22:26:53', '2021-05-31 14:16:37');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (12, 'Martineview', 1, '2020-06-24 03:35:00', '2021-02-11 21:06:23');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (13, 'Bradleyville', 16, '2020-08-22 03:29:29', '2020-07-18 04:02:15');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (14, 'Jenkinsshire', 2, '2021-06-05 08:21:26', '2020-10-28 04:54:52');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (15, 'North Caroline', 6, '2021-06-03 02:48:00', '2021-05-03 09:23:35');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (16, 'East Cierra', 19, '2020-08-17 15:31:17', '2020-09-02 02:20:36');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (17, 'Reingerview', 4, '2020-09-11 17:50:41', '2020-08-28 05:21:57');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (18, 'Herzogville', 2, '2021-05-25 19:50:41', '2020-07-25 22:47:32');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (19, 'Larkinmouth', 3, '2020-11-21 22:31:33', '2020-09-19 11:55:26');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (20, 'Townefurt', 16, '2020-10-12 11:25:24', '2021-03-27 21:46:19');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (21, 'South Nilsmouth', 17, '2021-05-19 08:40:21', '2020-07-19 13:01:19');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (22, 'Torphyland', 20, '2021-05-20 10:44:15', '2021-02-11 02:51:07');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (23, 'Jenkinstown', 2, '2020-10-04 23:03:38', '2021-05-01 10:17:16');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (24, 'Lake Mistychester', 20, '2021-03-16 19:42:22', '2020-12-17 19:34:27');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (25, 'Legrosfurt', 18, '2021-05-08 09:27:38', '2021-05-24 14:24:52');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (26, 'Emmanuelton', 12, '2021-04-16 21:34:16', '2021-04-21 12:48:58');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (27, 'Gastonshire', 11, '2020-07-23 06:04:54', '2021-05-15 01:02:30');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (28, 'Port Mavis', 19, '2021-02-09 14:08:25', '2021-04-02 00:48:24');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (29, 'North Murielshire', 14, '2020-12-25 19:54:16', '2021-05-26 01:23:02');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (30, 'Lake Lucilehaven', 8, '2021-04-23 22:42:54', '2021-06-18 18:42:29');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (31, 'Goldnerberg', 19, '2021-01-27 16:43:12', '2020-07-15 22:43:11');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (32, 'West Casper', 4, '2020-08-06 19:02:18', '2021-06-16 09:26:56');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (33, 'Jamaalmouth', 12, '2020-11-11 05:09:18', '2020-09-23 14:42:42');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (34, 'Mosciskimouth', 1, '2020-06-29 10:26:33', '2021-02-02 12:19:28');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (35, 'New Karson', 11, '2021-05-12 13:56:45', '2020-07-27 20:27:59');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (36, 'Deckowport', 16, '2020-09-05 18:22:31', '2021-04-19 22:04:51');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (37, 'Volkmanton', 20, '2020-11-29 14:56:32', '2020-11-10 18:35:15');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (38, 'New Josefaville', 13, '2021-01-07 17:13:34', '2021-02-03 23:33:53');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (39, 'Kunzetown', 19, '2021-02-07 04:21:00', '2021-01-11 11:33:17');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (40, 'East Vincent', 2, '2020-11-02 13:35:14', '2020-10-21 19:41:19');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (41, 'Unaville', 8, '2021-05-11 17:11:02', '2020-11-21 02:26:10');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (42, 'O\'Connellfort', 19, '2020-08-02 20:49:23', '2020-11-17 12:23:13');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (43, 'Glennieshire', 3, '2021-02-04 04:17:53', '2020-09-04 06:53:08');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (44, 'South Devin', 3, '2020-08-23 09:27:02', '2020-08-10 03:38:10');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (45, 'Carterfurt', 20, '2020-08-07 17:34:19', '2020-10-31 18:56:38');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (46, 'Karlton', 8, '2020-08-25 10:18:10', '2021-06-17 23:24:21');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (47, 'North Kirk', 1, '2020-08-02 13:04:45', '2020-07-09 10:54:37');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (48, 'Buckridgeport', 3, '2021-05-15 15:56:46', '2021-01-09 12:26:39');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (49, 'East Sammie', 10, '2020-09-09 14:48:52', '2021-06-05 22:37:54');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (50, 'Francotown', 4, '2020-12-06 06:19:06', '2021-01-24 16:56:14');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (51, 'North Jamey', 19, '2021-03-12 00:33:56', '2020-08-13 03:12:21');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (52, 'Franeckimouth', 7, '2020-12-08 09:17:07', '2020-09-01 12:20:56');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (53, 'Daltonshire', 3, '2021-06-16 23:02:35', '2020-10-22 01:22:37');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (54, 'New Wilhelm', 1, '2021-02-01 21:13:19', '2020-07-13 21:23:42');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (55, 'Bergnaumstad', 6, '2020-09-27 15:57:06', '2020-08-22 10:34:31');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (56, 'Aldenhaven', 1, '2020-10-06 17:35:14', '2020-07-13 02:22:09');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (57, 'New Russellfort', 12, '2020-07-05 03:31:02', '2020-12-05 02:31:29');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (58, 'Lake Eleonoreville', 16, '2020-10-29 23:58:36', '2021-02-07 01:07:43');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (59, 'Croninhaven', 19, '2020-07-28 13:20:01', '2020-07-24 08:17:40');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (60, 'West Leifborough', 6, '2020-12-05 15:46:21', '2021-03-23 02:16:53');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (61, 'South Icie', 4, '2020-07-11 01:59:35', '2021-05-09 03:02:08');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (62, 'North Ellsworthhaven', 17, '2021-03-07 08:49:36', '2020-10-07 14:32:45');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (63, 'Zboncakport', 9, '2021-05-30 04:23:52', '2021-04-20 04:29:57');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (64, 'Vandervortfort', 15, '2021-06-08 13:42:25', '2020-06-25 04:16:49');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (65, 'Chynaport', 18, '2021-02-05 00:56:27', '2020-12-14 03:46:42');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (66, 'Port Dellburgh', 20, '2020-10-29 06:16:20', '2020-07-04 22:32:02');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (67, 'Jaquelintown', 10, '2020-07-31 20:14:19', '2020-07-02 05:11:22');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (68, 'East Sage', 18, '2021-06-07 20:13:05', '2021-03-25 03:40:50');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (69, 'Schuppeport', 13, '2020-11-20 23:39:05', '2020-09-23 23:23:35');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (70, 'Lake Lucius', 9, '2020-10-24 08:04:48', '2021-03-07 17:16:42');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (71, 'Odellfort', 19, '2021-06-11 11:56:24', '2020-06-27 18:37:10');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (72, 'South Jo', 20, '2020-07-18 10:32:04', '2021-05-26 17:10:59');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (73, 'Thadhaven', 7, '2021-01-18 10:06:42', '2020-11-27 15:38:24');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (74, 'Olsonchester', 1, '2020-12-03 14:04:56', '2020-08-14 18:29:38');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (75, 'North Romaine', 3, '2020-12-13 04:54:49', '2020-10-12 09:40:59');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (76, 'Koeppburgh', 6, '2020-12-13 01:39:39', '2021-01-18 23:07:33');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (77, 'Charityfurt', 9, '2020-10-16 03:31:51', '2021-01-15 20:46:27');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (78, 'West Abby', 3, '2020-08-27 11:13:28', '2020-07-20 08:43:01');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (79, 'Mullerfurt', 9, '2021-01-23 03:58:33', '2021-03-07 10:13:02');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (80, 'Hammesside', 18, '2021-01-03 08:51:03', '2021-06-12 20:35:27');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (81, 'Terryland', 7, '2021-05-15 07:48:00', '2020-10-20 04:15:29');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (82, 'Lake Orlandshire', 8, '2020-08-15 19:23:22', '2020-10-06 02:19:00');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (83, 'South Johan', 4, '2021-05-19 14:29:38', '2021-05-21 00:29:17');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (84, 'West Michael', 10, '2021-03-11 23:28:15', '2020-10-05 17:15:53');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (85, 'West Annabelstad', 8, '2021-06-04 05:54:00', '2021-03-07 07:17:35');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (86, 'Lorenzomouth', 10, '2020-07-16 06:46:14', '2020-07-17 02:26:12');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (87, 'Alizeton', 10, '2020-10-06 18:23:53', '2020-09-10 05:49:46');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (88, 'South Adellamouth', 20, '2020-12-12 22:29:55', '2020-09-29 09:56:33');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (89, 'Gilbertoton', 5, '2020-10-31 18:27:19', '2020-08-09 01:17:29');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (90, 'Lake Toney', 9, '2021-01-08 17:33:49', '2020-07-19 13:41:17');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (91, 'Chasityshire', 5, '2021-06-06 12:11:49', '2021-04-04 19:17:07');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (92, 'Edisonberg', 8, '2021-01-09 18:22:57', '2021-06-07 04:26:39');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (93, 'East Nicolas', 6, '2021-01-02 05:48:54', '2020-07-20 18:44:48');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (94, 'North Efrainmouth', 14, '2020-08-09 16:21:21', '2021-03-10 07:06:22');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (95, 'Gusikowskiberg', 3, '2020-10-16 11:22:10', '2021-05-02 15:58:29');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (96, 'Wisokymouth', 3, '2021-05-05 17:49:48', '2020-09-18 04:37:48');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (97, 'Andersonstad', 13, '2020-09-12 22:20:20', '2021-01-04 12:36:41');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (98, 'Darenhaven', 13, '2021-05-21 22:59:30', '2020-11-04 04:01:10');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (99, 'Medhurstshire', 1, '2021-02-02 14:37:41', '2020-11-12 23:54:46');
INSERT INTO `cities` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (100, 'Bartellview', 5, '2021-04-03 20:50:49', '2020-07-18 06:42:24');

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Saint Martin', '2020-07-26 12:18:32', '2020-11-23 15:10:29');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Guadeloupe', '2021-05-09 00:14:20', '2021-05-23 23:38:39');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Cameroon', '2021-06-19 02:49:38', '2020-07-05 14:54:05');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Serbia', '2021-02-18 20:12:38', '2020-10-23 16:25:04');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Singapore', '2020-11-06 15:00:56', '2020-10-15 15:34:43');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Croatia', '2020-08-17 20:47:13', '2020-06-21 21:00:59');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Argentina', '2021-04-03 19:42:42', '2021-05-01 15:21:15');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Hong Kong', '2020-09-11 23:28:48', '2021-03-29 13:16:50');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Cook Islands', '2020-06-30 20:06:50', '2021-02-24 01:11:56');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Bahrain', '2020-11-15 10:18:24', '2021-05-09 01:16:44');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'Ethiopia', '2021-04-08 11:03:37', '2020-12-29 03:16:31');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'Cayman Islands', '2021-02-12 04:59:58', '2020-09-09 19:38:39');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'Belgium', '2020-10-20 19:49:09', '2021-02-09 20:30:47');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'Tajikistan', '2021-06-04 20:53:33', '2020-11-22 17:33:50');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'Mauritania', '2020-10-23 14:08:35', '2020-06-25 22:47:55');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'Namibia', '2020-11-21 04:38:35', '2020-10-11 18:56:24');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'Indonesia', '2020-11-12 06:02:13', '2021-05-23 19:07:21');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'India', '2020-09-03 17:37:43', '2020-10-14 01:57:24');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'Zimbabwe', '2020-07-08 09:22:52', '2020-09-23 06:38:27');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'Gambia', '2020-09-11 04:01:56', '2020-09-19 22:49:36');


-- ПОВТОРИТЬ НА СВОЕМ ДАМПЕ CRUD

UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;

UPDATE cities SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE countries SET updated_at = NOW() WHERE updated_at < created_at;

UPDATE communities SET photo_id = 1+FLOOR(RAND()*100);
DELETE FROM communities WHERE id > 30;
UPDATE communities SET is_moderated = FLOOR(RAND()*2);
UPDATE communities SET category_id = 1+FLOOR(RAND()*10);

SELECT * FROM communities_users;
UPDATE communities_users SET 
	community_id = 1+FLOOR(RAND()*29),
	user_id = 1+FLOOR(RAND()*100);

UPDATE friendship SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE friendship SET confirmed_at = NOW() WHERE confirmed_at < requested_at;

TRUNCATE friendship_statuses;
INSERT INTO friendship_statuses (name) VALUES ('sent'),('accepted'),('rejected'),('cancelled');
UPDATE friendship SET status_id = 1+FLOOR(RAND()*4);
UPDATE friendship SET 
	user_id = 1+FLOOR(RAND()*100),
	friend_id = 1+FLOOR(RAND()*100);

TRUNCATE media_types;
INSERT INTO media_types (name) VALUES ('video'),('audio'),('images');

UPDATE media SET media_type_id = 1+FLOOR(RAND()*3);
UPDATE media SET user_id = 1+FLOOR(RAND()*100);
UPDATE media SET size = 100000+FLOOR(RAND()*1000000) WHERE size < 99999;

CREATE TEMPORARY TABLE extensions (name CHAR(3));
INSERT INTO extensions (name) VALUES ('mp3'),('avi'),('mov'),('mpg');
SELECT * FROM extensions;
SELECT name FROM extensions ORDER BY RAND() LIMIT 1;

UPDATE media SET filename = CONCAT (
	'https://dropbox.com/vk/',
	filename,
	'.',
	(SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

-- {"owner":"Name Surname"}
UPDATE media SET metadata = CONCAT(
	'{"owner":"',
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
	'"}'
);
ALTER TABLE media MODIFY COLUMN metadata JSON;

UPDATE messages SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE messages SET 
	from_user_id = 1+FLOOR(RAND()*100),
	to_user_id = 1+FLOOR(RAND()*100);
UPDATE messages SET is_read = FLOOR(RAND()*2);

UPDATE pins SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE pins SET deleted_at = NOW() WHERE deleted_at < updated_at;
UPDATE pins SET deleted_at = NULL WHERE deleted = 0;

CREATE TEMPORARY TABLE genders (name CHAR(1));
INSERT INTO genders VALUES ('m'),('f');

UPDATE profiles SET gender = (SELECT * FROM genders ORDER BY RAND() LIMIT 1);
UPDATE profiles SET photo_id = 1+FLOOR(RAND()*100);
UPDATE profiles SET status_id = 1+FLOOR(RAND()*2);
UPDATE profiles SET city_id = 1+FLOOR(RAND()*100);
UPDATE profiles SET country_id = (SELECT country_id from cities WHERE profiles.city_id = cities.id);

UPDATE `communities` SET `description` = "magna. Sed eu eros. Nam consequat dolor vitae" WHERE `id` = 1;
UPDATE `communities` SET `description` = "ac nulla. In tincidunt" WHERE `id` = 2;
UPDATE `communities` SET `description` = "Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat." WHERE `id` = 3;
UPDATE `communities` SET `description` = "penatibus et magnis dis parturient montes, nascetur ridiculus" WHERE `id` = 4;
UPDATE `communities` SET `description` = "quis diam. Pellentesque habitant morbi tristique senectus et netus et" WHERE `id` = 5;
UPDATE `communities` SET `description` = "eu dolor egestas rhoncus. Proin nisl sem, consequat" WHERE `id` = 6;
UPDATE `communities` SET `description` = "mi, ac mattis velit justo nec ante." WHERE `id` = 7;
UPDATE `communities` SET `description` = "sapien, cursus in, hendrerit consectetuer," WHERE `id` = 8;
UPDATE `communities` SET `description` = "scelerisque sed, sapien. Nunc pulvinar arcu et pede." WHERE `id` = 9;
UPDATE `communities` SET `description` = "ac, eleifend vitae, erat. Vivamus" WHERE `id` = 10;
UPDATE `communities` SET `description` = "Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed" WHERE `id` = 11;
UPDATE `communities` SET `description` = "dolor. Fusce feugiat. Lorem ipsum dolor" WHERE `id` = 12;
UPDATE `communities` SET `description` = "pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero." WHERE `id` = 13;
UPDATE `communities` SET `description` = "facilisis non, bibendum sed," WHERE `id` = 14;
UPDATE `communities` SET `description` = "Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus" WHERE `id` = 15;
UPDATE `communities` SET `description` = "turpis non enim. Mauris quis turpis vitae purus gravida" WHERE `id` = 16;
UPDATE `communities` SET `description` = "massa rutrum magna. Cras convallis convallis dolor. Quisque" WHERE `id` = 17;
UPDATE `communities` SET `description` = "scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu" WHERE `id` = 18;
UPDATE `communities` SET `description` = "dui quis accumsan convallis, ante" WHERE `id` = 19;
UPDATE `communities` SET `description` = "at lacus. Quisque purus sapien, gravida non," WHERE `id` = 20;
UPDATE `communities` SET `description` = "Donec porttitor tellus non" WHERE `id` = 21;
UPDATE `communities` SET `description` = "luctus et ultrices posuere cubilia Curae; Donec" WHERE `id` = 22;
UPDATE `communities` SET `description` = "nibh dolor, nonummy ac," WHERE `id` = 23;
UPDATE `communities` SET `description` = "eleifend egestas. Sed pharetra, felis" WHERE `id` = 24;
UPDATE `communities` SET `description` = "mattis. Integer eu lacus. Quisque imperdiet, erat nonummy" WHERE `id` = 25;
UPDATE `communities` SET `description` = "cubilia Curae; Donec tincidunt. Donec vitae erat" WHERE `id` = 26;
UPDATE `communities` SET `description` = "Nunc ut erat. Sed nunc est, mollis non, cursus non," WHERE `id` = 27;
UPDATE `communities` SET `description` = "amet metus. Aliquam erat volutpat." WHERE `id` = 28;
UPDATE `communities` SET `description` = "ac arcu. Nunc mauris. Morbi non sapien molestie" WHERE `id` = 29;
UPDATE `communities` SET `description` = "Aliquam gravida mauris ut mi. Duis risus" WHERE `id` = 30;

-- ВЫБРАТЬ СЕРВИС-ОБРАЗЕЦ: определить для чего планирую делать БД в рамках курсовой:
-- хочу попробовать своими руками написать БД для простой игры
